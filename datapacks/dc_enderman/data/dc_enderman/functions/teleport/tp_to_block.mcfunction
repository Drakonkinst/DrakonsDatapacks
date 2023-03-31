execute at @s run function dc_enderman:teleport/pre_tp
tp @s ~ ~ ~
execute at @s run function dc_enderman:teleport/post_tp
tag @s add dc_tp_success
scoreboard players reset @s dc_EM_sneakTime