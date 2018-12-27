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
ExecStep $xv_path/bin/xsim Lab1Sim_behav -key {Behavioral:sim_1:Functional:Lab1Sim} -tclbatch Lab1Sim.tcl -log simulate.log
