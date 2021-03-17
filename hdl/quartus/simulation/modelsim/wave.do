view wave 
wave clipboard store
wave create -pattern none -portmode input -language vlog /sum1bcc/A 
wave create -pattern none -portmode input -language vlog /sum1bcc/B 
wave create -pattern none -portmode input -language vlog /sum1bcc/Ci 
wave create -pattern none -portmode output -language vlog /sum1bcc/Cout 
wave create -pattern none -portmode output -language vlog /sum1bcc/S 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/sum1bcc/A 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/sum1bcc/B 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 400ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/sum1bcc/Ci 
{wave export -file E:/Users/tisam.SUPER-PC/Documents/GitHub/lab00-tmontanaUNAL/hdl/quartus/simulation/modelsim/tb -starttime 0 -endtime 1000 -format vlog -designunit sum1bcc} 
WaveCollapseAll -1
wave clipboard restore
