compile : *.v
	iverilog -o sccomp_tb.v.out sccomp_tb.v sccomp.v SCPU.v dm.v im.v EXT.v NPC.v PC.v RF.v alu.v ctrl.v
run : compile
	vvp -n sccomp_tb.v.out