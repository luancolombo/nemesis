@echo off
title Auto OTServ Restarter
echo :: =========================================
echo :: --- AUTO RESTARTER ---
echo :: =========================================
echo ::
echo ::
:begin
Canary.exe
echo ::
echo :: =========================================
echo :: --- Reiniciando ---
echo :: =========================================
echo ::
goto begin
:goto begin