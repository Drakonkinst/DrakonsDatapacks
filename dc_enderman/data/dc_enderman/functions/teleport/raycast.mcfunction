scoreboard players remove #RaycastLength dc_value 1
execute if block ~ ~ ~ #dc_enderman:teleport_through if score #RaycastLength dc_value matches 1.. positioned ^ ^ ^.2 run function dc_enderman:teleport/raycast
execute unless block ~ ~ ~ #dc_enderman:teleport_through run function dc_enderman:teleport/check_block