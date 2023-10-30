# Range = 20 * 0.2 = 4 blocks
scoreboard players set #RaycastLength dc_value 20
execute anchored eyes positioned ^ ^ ^0.2 run function dc_werewolf:leash/raycast
scoreboard players reset #RaycastLength dc_value