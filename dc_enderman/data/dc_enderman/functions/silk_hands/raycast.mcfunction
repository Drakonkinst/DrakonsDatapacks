scoreboard players remove #RaycastLength dc_value 1
execute if block ~ ~ ~ #dc_enderman:enderman_pass_through if score #RaycastLength dc_value matches 1.. positioned ^ ^ ^.2 run function dc_enderman:silk_hands/raycast
execute unless block ~ ~ ~ #dc_enderman:enderman_pass_through run function dc_enderman:silk_hands/check_block