# Run when a player respawns
execute if entity @s[tag=dc_diedInCreativeDim] run function dc_creative:player/in_creative_dimension/leave/execute_from_player
tag @s remove dc_diedInCreativeDim