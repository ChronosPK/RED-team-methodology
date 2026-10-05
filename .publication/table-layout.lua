-- PDF publication controls for tables, classification placeholders and diagrams.

local is_latex = FORMAT:match('latex') ~= nil
local is_template = os.getenv('RT_PUBLICATION_KIND') == 'template'

local function trim(value)
  return (value:gsub('^%s+', ''):gsub('%s+$', ''))
end

local function cell_text(cell)
  return trim(pandoc.utils.stringify(cell.contents):gsub('%s+', ' '))
end

local function normalise_header(value)
  return trim(value:lower():gsub('%s+', ' '))
end

local function first_header_row(tbl)
  if tbl.head and tbl.head.rows and #tbl.head.rows > 0 then
    return tbl.head.rows[1]
  end

  for _, body in ipairs(tbl.bodies or {}) do
    if body.head and #body.head > 0 then
      return body.head[1]
    end
  end

  return nil
end

local function table_key(tbl)
  local row = first_header_row(tbl)
  if not row then
    return ''
  end

  local labels = {}
  for _, cell in ipairs(row.cells) do
    labels[#labels + 1] = normalise_header(cell_text(cell))
  end
  return table.concat(labels, '|')
end

-- Recurring publication tables get editorially chosen widths. Other tables use
-- the content-aware calculation below.
local preferred_widths = {
  ['amendment|date|inserted by|summary'] = {0.25, 0.13, 0.18, 0.44},
  ['annex|title'] = {0.16, 0.84},
  ['term|meaning'] = {0.24, 0.76},
  ['activity|question answered|product|defensive awareness'] = {0.18, 0.35, 0.34, 0.13},
  ['asset id|asset type|identifier|provider|tier|purpose|created|by|decommission method|removal date (utc)|verified by'] = {0.07, 0.085, 0.11, 0.09, 0.04, 0.08, 0.07, 0.04, 0.18, 0.13, 0.105},
  ['|assurance (this publication)|operational effects'] = {0.18, 0.41, 0.41},
  ['|asigurare (prezenta publicație)|efecte operaționale'] = {0.18, 0.41, 0.41},
  ['|objective|question answered|principal measure'] = {0.06, 0.24, 0.37, 0.33},
  ['|category|customer|normally covert'] = {0.06, 0.25, 0.50, 0.19},
  ['customer requirement|activity'] = {0.68, 0.32},
  ['appointment|responsible for|shall not be'] = {0.19, 0.46, 0.35},
  ['decision|appointment'] = {0.68, 0.32},
  ['combination|reason'] = {0.30, 0.70},
  ['phase|purpose|concludes when'] = {0.16, 0.42, 0.42},
  ['phases|elapsed'] = {0.72, 0.28},
  ['stage|object'] = {0.22, 0.78},
  ['category|measures'] = {0.23, 0.77},
  ['category|owner|cost|time to remedy'] = {0.18, 0.18, 0.16, 0.48},
  ['frequency|activity'] = {0.22, 0.78},
  ['risk|control'] = {0.32, 0.68},
  ['tier|amendment|authority'] = {0.15, 0.50, 0.35},
  ['matter|resolution'] = {0.30, 0.70},
  ['attribute|value|status'] = {0.22, 0.55, 0.23},
  ['area|commercial default|our position'] = {0.18, 0.34, 0.48},
  ['framework|applies to us?|how we use it'] = {0.23, 0.18, 0.59},
  ['#|action|owner|done'] = {0.07, 0.58, 0.22, 0.13},
  ['section|content'] = {0.27, 0.73},
  ['field|content'] = {0.27, 0.73},
  ['component|content'] = {0.27, 0.73},
  ['measure|definition'] = {0.28, 0.72},
  ['source|contribution'] = {0.28, 0.72},
  ['area|bearing on the activity'] = {0.27, 0.73},
  ['principle|application'] = {0.28, 0.72},
  ['control|requirement'] = {0.28, 0.72},
  ['appointment|requirement'] = {0.27, 0.73},
  ['sub-team|focus'] = {0.25, 0.75},
  ['appendix|content'] = {0.20, 0.80},
  ['point|activity'] = {0.24, 0.76},
  ['cadence|activity'] = {0.24, 0.76},
  ['book|for'] = {0.33, 0.67},
  ['domain|what to look for'] = {0.25, 0.75},
  ['resource|value'] = {0.27, 0.73},
  ['model|description'] = {0.28, 0.72}
}

function Image(img)
  if is_latex then
    for _, class in ipairs(img.classes) do
      if class == 'rt-diagram' then
        -- Mermaid's 800 px canvas otherwise renders slightly larger than the
        -- body type and can leave too little room for the classified footer.
        img.attributes.width = '80%'
        break
      end
    end
  end
  return img
end

local function rows_in(tbl)
  local rows = {}

  for _, row in ipairs((tbl.head and tbl.head.rows) or {}) do
    rows[#rows + 1] = row
  end

  for _, body in ipairs(tbl.bodies or {}) do
    for _, row in ipairs(body.head or {}) do
      rows[#rows + 1] = row
    end
    for _, row in ipairs(body.body or {}) do
      rows[#rows + 1] = row
    end
  end

  for _, row in ipairs((tbl.foot and tbl.foot.rows) or {}) do
    rows[#rows + 1] = row
  end

  return rows
end

local function minimum_width(column_count)
  if column_count <= 2 then return 0.20 end
  if column_count == 3 then return 0.14 end
  if column_count == 4 then return 0.10 end
  if column_count == 5 then return 0.075 end
  if column_count == 6 then return 0.06 end
  return 0.04
end

local function distribute_with_floor(scores, floor)
  local widths = {}
  local fixed = {}
  local remaining_width = 1.0
  local remaining_score = 0

  for _, score in ipairs(scores) do
    remaining_score = remaining_score + score
  end

  while true do
    local changed = false
    for index, score in ipairs(scores) do
      if not fixed[index] then
        local candidate = remaining_width * score / remaining_score
        if candidate < floor then
          widths[index] = floor
          fixed[index] = true
          remaining_width = remaining_width - floor
          remaining_score = remaining_score - score
          changed = true
        end
      end
    end
    if not changed then break end
  end

  for index, score in ipairs(scores) do
    if not fixed[index] then
      widths[index] = remaining_width * score / remaining_score
    end
  end

  return widths
end


local function inferred_widths(tbl)
  local column_count = #tbl.colspecs
  local totals = {}
  local samples = {}

  for index = 1, column_count do
    totals[index] = 0
    samples[index] = 0
  end

  for _, row in ipairs(rows_in(tbl)) do
    for index, cell in ipairs(row.cells) do
      if index <= column_count then
        local length = #cell_text(cell)
        totals[index] = totals[index] + math.min(length, 240)
        samples[index] = samples[index] + 1
      end
    end
  end

  local averages = {}
  local scores = {}
  for index = 1, column_count do
    averages[index] = totals[index] / math.max(samples[index], 1)
    scores[index] = math.sqrt(averages[index] + 8)
  end

  -- Two-column label/detail tables are common in this publication. Keep the
  -- shorter field usable and give the narrative field the working space.
  if column_count == 2 then
    local short = averages[1] <= averages[2] and 1 or 2
    local long = short == 1 and 2 or 1
    if averages[long] >= math.max(averages[short] * 1.8, averages[short] + 18) then
      local widths = {0.70, 0.70}
      widths[short] = 0.30
      return widths
    end
  end

  return distribute_with_floor(scores, minimum_width(column_count))
end


local function add_cell_colour(cell, colour)
  if not is_latex then return end

  local colour_command = pandoc.RawInline('latex', '\\cellcolor{' .. colour .. '}')
  local first = cell.contents[1]
  if first and (first.t == 'Plain' or first.t == 'Para') then
    table.insert(first.content, 1, colour_command)
  else
    table.insert(cell.contents, 1, pandoc.Plain({colour_command}))
  end
end

local function colour_row(row, colour)
  for _, cell in ipairs(row.cells) do
    add_cell_colour(cell, colour)
  end
end

local function add_writing_height(row)
  if not is_latex or not is_template then return end

  local first_cell = row.cells[1]
  if not first_cell then return end

  local strut = pandoc.RawInline('latex', '\\rule{0pt}{2.2em}')
  local first = first_cell.contents[1]
  if first and (first.t == 'Plain' or first.t == 'Para') then
    table.insert(first.content, 1, strut)
  else
    table.insert(first_cell.contents, 1, pandoc.Plain({strut}))
  end
end

function Table(tbl)
  local widths = preferred_widths[table_key(tbl)] or inferred_widths(tbl)
  if #widths == #tbl.colspecs then
    for index, spec in ipairs(tbl.colspecs) do
      tbl.colspecs[index] = {spec[1], widths[index]}
    end
  end

  if is_latex then
    for _, row in ipairs((tbl.head and tbl.head.rows) or {}) do
      colour_row(row, 'RTTableHeader')
    end

    for _, body in ipairs(tbl.bodies or {}) do
      for _, row in ipairs(body.head or {}) do
        colour_row(row, 'RTTableHeader')
      end
      for index, row in ipairs(body.body or {}) do
        add_writing_height(row)
        if index % 2 == 1 then
          colour_row(row, 'RTTableStripe')
        end
      end
    end
  end

  if is_latex and #tbl.colspecs >= 8 then
    return {
      pandoc.RawBlock('latex', '\\begin{rtlandscape}'),
      tbl,
      pandoc.RawBlock('latex', '\\end{rtlandscape}')
    }
  end

  return tbl
end

function Pandoc(doc)
  if is_latex and is_template then
    -- Keep a section heading and its short lead-in with the wide form table
    -- that follows it. Otherwise pdflscape can strand the heading on an
    -- almost empty portrait page before starting the landscape table.
    local index = 1
    while index <= #doc.blocks do
      local block = doc.blocks[index]
      if block.t == 'RawBlock'
        and block.format == 'latex'
        and block.text:find('\\begin{rtlandscape}', 1, true) then
        local target = index
        local lower_bound = math.max(1, index - 5)

        for previous = index - 1, lower_bound, -1 do
          local candidate = doc.blocks[previous]
          if candidate.t == 'Header' then
            local heading = trim(pandoc.utils.stringify(candidate.content):gsub('%s+', ' ')):upper()
            if not heading:match('^T%d%d%s')
              and heading ~= 'RULES OF ENGAGEMENT'
              and heading ~= 'RED TEAM ENGAGEMENT REPORT' then
              target = previous
              if previous > 1 and doc.blocks[previous - 1].t == 'HorizontalRule' then
                target = previous - 1
              end
            end
            break
          elseif candidate.t == 'Table'
            or (candidate.t == 'RawBlock'
              and candidate.text:find('\\end{rtlandscape}', 1, true)) then
            break
          end
        end

        if target < index then
          local landscape_start = table.remove(doc.blocks, index)
          table.insert(doc.blocks, target, landscape_start)
        end
      end
      index = index + 1
    end

    table.insert(doc.blocks, 1, pandoc.RawBlock('latex',
      '\\renewcommand{\\arraystretch}{1.22}\n\\setlength{\\extrarowheight}{1pt}'))
  end

  return doc
end

local function starts_template(text)
  local heading = trim(text:gsub('%s+', ' ')):upper()
  return heading:match('^T%d%d%s') ~= nil
    or heading == 'RULES OF ENGAGEMENT'
    or heading == 'RED TEAM ENGAGEMENT REPORT'
end

function Header(header)
  local text = trim(pandoc.utils.stringify(header.content):gsub('%s+', ' ')):upper()
  if is_latex and header.level == 1
    and (starts_template(text)
      or text == 'IMMEDIATE-VERIFICATION CARD'
      or text == 'CARD DE VERIFICARE IMEDIATĂ') then
    return {
      pandoc.RawBlock('latex', '\\rtstarttemplate'),
      header
    }
  end

  return header
end

function Str(str)
  if is_latex and (str.text:find('%[') or str.text:find('%]')) then
    return {
      pandoc.RawInline('latex', '\\mbox{'),
      str,
      pandoc.RawInline('latex', '}')
    }
  end

  return str
end


local diagram_widths = {
  ['main-authorisation.png'] = '92%',
  ['main-lifecycle.png'] = '92%',
  ['main-deconfliction.png'] = '92%',
  ['annex-a-roles.png'] = '92%',
  ['annex-c-lifecycle.png'] = '92%',
  ['annex-d-infrastructure.png'] = '90%',
  ['annex-e-deconfliction.png'] = '92%',
  ['annex-g-authorisation.png'] = '72%',
  ['annex-h-mandate.png'] = '82%',
  ['annex-h-exercise-teams.png'] = '82%',
  ['annex-h-purple-cycle.png'] = '96%',
  ['annex-k-tiber-lifecycle.png'] = '92%',
  ['annex-k-nist-lifecycle.png'] = '76%'
}

local diagram_space = {
  ['main-authorisation.png'] = '0.48',
  ['main-lifecycle.png'] = '0.40',
  ['main-deconfliction.png'] = '0.55',
  ['annex-a-roles.png'] = '0.50',
  ['annex-c-lifecycle.png'] = '0.40',
  ['annex-d-infrastructure.png'] = '0.46',
  ['annex-e-deconfliction.png'] = '0.56',
  ['annex-g-authorisation.png'] = '0.45',
  ['annex-h-mandate.png'] = '0.45',
  ['annex-h-exercise-teams.png'] = '0.46',
  ['annex-h-purple-cycle.png'] = '0.48',
  ['annex-k-tiber-lifecycle.png'] = '0.38',
  ['annex-k-nist-lifecycle.png'] = '0.40'
}

local function is_mermaid_image(image)
  for _, class in ipairs(image.classes or {}) do
    if class == 'rt-diagram' then return true end
  end
  return false
end

local function diagram_name(source)
  return source:gsub('\\', '/'):match('([^/]+)$')
end

function Para(para)
  local text = trim(pandoc.utils.stringify(para):gsub('%s+', ' ')):upper()
  if text == 'CLASSIFICATION: {{CLASSIFICATION}}'
    or text == '{{CLASSIFICATION}}'
    or text == 'CLASSIFICATION: [CLASSIFICATION]'
    or text == '[CLASSIFICATION]' then
    return {}
  end

  if #para.content == 1 and para.content[1].t == 'Image' and is_mermaid_image(para.content[1]) then
    local image = para.content[1]
    local name = diagram_name(image.src)
    image.attributes.width = diagram_widths[name] or '92%'

    if is_latex then
      return {
        pandoc.RawBlock('latex', '\\Needspace{' .. (diagram_space[name] or '0.50') .. '\\textheight}\n\\begin{center}'),
        para,
        pandoc.RawBlock('latex', '\\end{center}\n\\nopagebreak[4]')
      }
    end
  end

  return para
end
