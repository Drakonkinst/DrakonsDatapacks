scoreboard players operation #Selected dc_value = @s dc_value
scoreboard players operation #Selected dc_value /= #Filter dc_value
scoreboard players operation #Selected dc_value %= #2 dc_value
tag @s remove dc_entityLook.in_filter
execute if score #Selected dc_value matches 1 run tag @s add dc_entityLook.in_filter
