
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Logic_Gates -dir "C:/Users/sgpma/Downloads/Projects/Logic_Gates/planAhead_run_3" -part xc6slx9tqg144-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/sgpma/Downloads/Projects/Logic_Gates/basic_gates_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/sgpma/Downloads/Projects/Logic_Gates} }
set_property target_constrs_file "basic_gates.ucf" [current_fileset -constrset]
add_files [list {basic_gates.ucf}] -fileset [get_property constrset [current_run]]
link_design
