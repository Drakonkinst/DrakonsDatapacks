execute store result score @s dc_value run data get entity @s Age
tag @s add torch_on_ground
execute if score @s dc_value matches 15.. run function dc_throwable_torch:place_thrown_torch
scoreboard players reset @s dc_value