
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Full_Subtractor -dir "C:/Users/sgpma/Downloads/Projects/Full_Subtractor/planAhead_run_1" -part xc6slx9tqg144-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/sgpma/Downloads/Projects/Full_Subtractor/full_subtractor.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/sgpma/Downloads/Projects/Full_Subtractor} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "full_subtractor.ucf" [current_fileset -constrset]
add_files [list {full_subtractor.ucf}] -fileset [get_property constrset [current_run]]
link_design
