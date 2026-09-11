
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Special_Purpose_Gates -dir "C:/Users/sgpma/Downloads/Projects/Special_Purpose_Gates/planAhead_run_2" -part xc6slx9tqg144-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/sgpma/Downloads/Projects/Special_Purpose_Gates/special_purpose_gates_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/sgpma/Downloads/Projects/Special_Purpose_Gates} }
set_property target_constrs_file "special_purpose_gates_top.ucf" [current_fileset -constrset]
add_files [list {special_purpose_gates_top.ucf}] -fileset [get_property constrset [current_run]]
link_design
