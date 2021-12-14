scoreboard players remove #RaycastLength dc_value 1
execute if block ~ ~ ~ #drakoncore:non_solid if score #RaycastLength dc_value matches 1.. positioned ^ ^ ^.2 run function dc_enderman:teleport/raycast
execute unless block ~ ~ ~ #drakoncore:non_solid run function dc_enderman:teleport/check_block