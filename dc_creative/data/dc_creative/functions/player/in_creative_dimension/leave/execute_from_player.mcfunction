# Switch the player tag
tag @s remove dc_prepare_to_leave_creative_dimension
tag @s add dc_player_leave_dimension
# Teleport back near the last entered portal
summon marker ~ ~ ~ {Tags:["dc_tp_marker"]}
execute as @e[type=marker,tag=dc_tp_marker,limit=1] run function dc_creative:player/in_creative_dimension/leave/execute_from_marker
# Remove tag after execution
tag @s remove dc_player_leave_dimension