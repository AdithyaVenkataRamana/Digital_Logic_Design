
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Full_Adder -dir "C:/Users/sgpma/Downloads/Projects/Full_Adder/planAhead_run_1" -part xc6slx9tqg144-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/sgpma/Downloads/Projects/Full_Adder/full_adder.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/sgpma/Downloads/Projects/Full_Adder} }
set_property target_constrs_file "full_adder.ucf" [current_fileset -constrset]
add_files [list {full_adder.ucf}] -fileset [get_property constrset [current_run]]
link_design
