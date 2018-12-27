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
ExecStep $xv_path/bin/xelab -wto 042dd29b30ca4d7e867a5618149b9ad2 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Problem5Sim_behav xil_defaultlib.Problem5Sim xil_defaultlib.glbl -log elaborate.log
