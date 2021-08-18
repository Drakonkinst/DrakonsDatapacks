execute store result score @s dc_value run data get entity @s AngryAt[0]
execute if score @s dc_value = #EndermanID dc_value at @s run function dc_enderman:reset_enderman