
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Gray_Comverter -dir "C:/Users/sgpma/Downloads/Projects/Gray_Comverter/planAhead_run_1" -part xc6slx9tqg144-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/sgpma/Downloads/Projects/Gray_Comverter/bin_to_gray.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/sgpma/Downloads/Projects/Gray_Comverter} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "bin_to_gray.ucf" [current_fileset -constrset]
add_files [list {bin_to_gray.ucf}] -fileset [get_property constrset [current_run]]
link_design
