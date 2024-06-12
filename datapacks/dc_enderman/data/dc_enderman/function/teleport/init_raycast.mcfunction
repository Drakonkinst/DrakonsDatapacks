# 48 blocks / 0.2 step + 1 leeway = 241
scoreboard players set #RaycastLength dc_value 241
execute anchored eyes positioned ^ ^ ^ run function dc_enderman:teleport/raycast
execute if entity @s[tag=!dc_tp_success] if score #RaycastLength dc_value matches 0 run function dc_enderman:teleport/fail_tp_too_far
execute if entity @s[tag=!dc_tp_success] unless score #RaycastLength dc_value matches 0 run function dc_enderman:teleport/fail_tp_invalid
tag @s remove dc_tp_success
scoreboard players reset @s dc_EM_sneakTime