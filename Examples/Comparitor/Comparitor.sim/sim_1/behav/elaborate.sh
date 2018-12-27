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
ExecStep $xv_path/bin/xelab -wto bd6c1def3fdc4aaea23b87b0552fff48 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot CompareSim_behav xil_defaultlib.CompareSim xil_defaultlib.glbl -log elaborate.log
