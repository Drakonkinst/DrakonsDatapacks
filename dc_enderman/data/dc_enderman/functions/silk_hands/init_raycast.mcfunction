# 4 blocks / 0.2 step + 1 leeway = 21
scoreboard players set #RaycastLength dc_value 21
execute unless entity @s[tag=dc_emGrace] anchored eyes positioned ^ ^ ^ run function dc_enderman:silk_hands/raycast
scoreboard players reset @s dc_EM_sneakTime