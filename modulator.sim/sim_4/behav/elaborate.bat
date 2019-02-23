@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto e461357db4a84a9ca08978afaaf17763 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot pwm_tb_behav xil_defaultlib.pwm_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
