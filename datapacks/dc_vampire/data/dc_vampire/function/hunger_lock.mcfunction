execute store result score @s dc_value run data get entity @s foodLevel
execute if score @s dc_value matches ..7 run effect give @s minecraft:saturation 1 0 true
execute if score @s dc_value matches 9.. run effect give @s minecraft:hunger 1 255 true
execute if score @s dc_value matches 18.. run effect give @s minecraft:poison 1 4 true