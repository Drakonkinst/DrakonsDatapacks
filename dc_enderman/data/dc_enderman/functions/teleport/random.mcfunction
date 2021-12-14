execute at @s run function dc_enderman:teleport/pre_tp
spreadplayers ~ ~ 0 16 false @s
execute at @s run function dc_enderman:teleport/post_tp
scoreboard players reset @s dc_EM_sneakTime