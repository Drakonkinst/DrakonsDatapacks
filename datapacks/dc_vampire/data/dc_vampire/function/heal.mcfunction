execute store result score @s dc_value run data get entity @s Health
execute if score @s dc_value matches 20.. run effect give @s minecraft:absorption 300 0 true
execute if score @s dc_value matches 20.. run particle minecraft:dust 1 1 0 2 ~ ~1 ~ 0.4 0.4 0.4 0 5
effect give @s instant_health 1 0 true