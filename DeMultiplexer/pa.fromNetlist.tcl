
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name DeMultiplexer -dir "C:/Users/sgpma/Downloads/Projects/DeMultiplexer/planAhead_run_1" -part xc6slx9tqg144-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/sgpma/Downloads/Projects/DeMultiplexer/demux_1_4.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/sgpma/Downloads/Projects/DeMultiplexer} }
set_property target_constrs_file "demux_1_4.ucf" [current_fileset -constrset]
add_files [list {demux_1_4.ucf}] -fileset [get_property constrset [current_run]]
link_design
