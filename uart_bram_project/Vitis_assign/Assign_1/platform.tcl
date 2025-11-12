# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/delinm/Documents/Embeded_Systems-main/uart_bram_project/Vitis_assign/Assign_1/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/delinm/Documents/Embeded_Systems-main/uart_bram_project/Vitis_assign/Assign_1/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Assign_1}\
-hw {/home/delinm/Documents/Embeded_Systems-main/uart_bram_project/design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {/home/delinm/Documents/Embeded_Systems-main/uart_bram_project/Vitis_assign}

platform write
platform generate -domains 
platform active {Assign_1}
platform generate
platform config -updatehw {/home/delinm/Documents/Embeded_Systems-main/uart_bram_project/design_1_wrapper.xsa}
platform generate -domains 
platform active {Assign_1}
platform config -updatehw {/home/delinm/Documents/Embeded_Systems-main/uart_bram_project/design_1_wrapper.xsa}
platform generate -domains 
