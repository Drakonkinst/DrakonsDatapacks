# Execution depending on the portal orientation
execute if entity @s[tag=dc_portal_facing_north] run function dc_creative:portal/behavior/tick_portal_facing_north
execute if entity @s[tag=dc_portal_facing_east] run function dc_creative:portal/behavior/tick_portal_facing_east
# Check if entrance is obstructed 
execute unless block ~ ~2 ~ light run function dc_creative:portal/behavior/break_portal
# Animation
execute if predicate dc_creative:rng/50_percent run particle spore_blossom_air ~ ~4 ~ 3 3 3 0.001 1