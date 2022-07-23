# Runs once per second on each player
execute if score @s dc_broodmother_stage matches 1.. run scoreboard players remove @s dc_broodmother_stage 1
execute if score @s dc_broodmother_stage matches 0.. unless predicate dc_arachnid_broodmother:has_slowness run scoreboard players reset @s dc_broodmother_stage