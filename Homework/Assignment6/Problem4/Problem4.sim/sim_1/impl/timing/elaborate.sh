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
ExecStep $xv_path/bin/xelab -wto 1a7a790f8e6e4f198ecc5c5a9a2eaf2c -m64 --debug typical --relax --mt 8 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot Problem4Sim_time_impl -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.Problem4Sim xil_defaultlib.glbl -log elaborate.log
