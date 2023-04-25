tag @s add dc_hb_active
title @s times 0 0.5s 1s

execute if score @s dc_value matches 1 run function dc_hidden_blade:stage_1
execute if score @s dc_value matches 2 run function dc_hidden_blade:stage_2
execute if score @s dc_value matches 3 run function dc_hidden_blade:stage_3
execute if score @s dc_value matches 4 run function dc_hidden_blade:stage_4
execute if score @s dc_value matches 5 run function dc_hidden_blade:stage_5

scoreboard players operation @s dc_hb_prevStage = @s dc_value