# Runs 4 times per second on each player
tag @s add dc_pickup
execute if predicate drakoncore:is_sneaking positioned ~ ~-0.5 ~ as @e[type=armor_stand,tag=dc_te_model,limit=1,distance=..1] run function dc_tool_embed:pickup_item
tag @s remove dc_pickup