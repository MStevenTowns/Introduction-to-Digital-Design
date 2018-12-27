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
ExecStep $xv_path/bin/xelab -wto f96e3757b47f4ff0a9986eeda9d17527 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Problem4Sim_behav xil_defaultlib.Problem4Sim xil_defaultlib.glbl -log elaborate.log
