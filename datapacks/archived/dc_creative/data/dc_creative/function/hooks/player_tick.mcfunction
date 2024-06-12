# Runs 20 times per second on each player
# Player
# - Entering a portal
execute if entity @s[tag=dc_in_portal] run function dc_creative:player/in_portal/tick
# - Being in creative dimension
execute if entity @s[tag=dc_in_creative_dimension,predicate=dc_creative:dimension/creative_world] run function dc_creative:player/in_creative_dimension/tick
# - Being not in creative dimension anymore
execute if entity @s[tag=dc_wait_for_effects_back] run function dc_creative:player/restore/restore_player_effects
execute if entity @s[tag=dc_in_creative_dimension,predicate=!dc_creative:dimension/creative_world] in minecraft:overworld run function dc_creative:player/restore/restore_player_data