# 48 blocks / 0.2 step + 1 leeway = 241
scoreboard players set #RaycastLength dc_value 241
execute anchored eyes positioned ^ ^ ^ run function dc_enderman:teleport/raycast
execute if entity @s[tag=!dc_tp_success] run function dc_enderman:teleport/fail_tp
tag @s remove dc_tp_success
scoreboard players reset @s dc_EM_sneakTime