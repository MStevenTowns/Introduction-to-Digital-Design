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
ExecStep $xv_path/bin/xsim Problem1Sim_time_impl -key {Post-Implementation:sim_1:Timing:Problem1Sim} -tclbatch Problem1Sim.tcl -log simulate.log
