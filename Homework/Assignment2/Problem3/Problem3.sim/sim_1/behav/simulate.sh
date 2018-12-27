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
ExecStep $xv_path/bin/xsim Problem3Sim_behav -key {Behavioral:sim_1:Functional:Problem3Sim} -tclbatch Problem3Sim.tcl -log simulate.log
