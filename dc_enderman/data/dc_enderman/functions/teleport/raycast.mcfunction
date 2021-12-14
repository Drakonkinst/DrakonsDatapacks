scoreboard players remove #RaycastLength dc_value 1
execute if block ~ ~ ~ #dc_enderman:enderman_pass_through if score #RaycastLength dc_value matches 1.. positioned ^ ^ ^.2 run function dc_enderman:teleport/raycast
execute unless block ~ ~ ~ #dc_enderman:enderman_pass_through unless block ~ ~ ~ #drakoncore:non_solid run function dc_enderman:teleport/check_block