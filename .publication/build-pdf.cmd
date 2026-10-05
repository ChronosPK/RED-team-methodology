@echo off
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0build-pdf.ps1" %*
