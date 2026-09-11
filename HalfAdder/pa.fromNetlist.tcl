
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name HalfAdder -dir "C:/Users/sgpma/Downloads/Projects/HalfAdder/planAhead_run_2" -part xc6slx9tqg144-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/sgpma/Downloads/Projects/HalfAdder/ha.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/sgpma/Downloads/Projects/HalfAdder} }
set_property target_constrs_file "ha.ucf" [current_fileset -constrset]
add_files [list {ha.ucf}] -fileset [get_property constrset [current_run]]
link_design
