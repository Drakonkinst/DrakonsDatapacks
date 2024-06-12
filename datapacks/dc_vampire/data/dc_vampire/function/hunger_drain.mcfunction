effect give @s minecraft:hunger 1 255 true
effect give @s minecraft:mining_fatigue 1 0 true
execute store result score @s dc_value run data get entity @s foodLevel
execute if score @s dc_value matches 18.. run effect give @s minecraft:poison 1 4 true