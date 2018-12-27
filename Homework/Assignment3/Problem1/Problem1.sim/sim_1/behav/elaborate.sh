#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2015.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 0b4ae948aad04a5696c1594b215a3c9d -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Problem1Sim_behav xil_defaultlib.Problem1Sim xil_defaultlib.glbl -log elaborate.log
