execute store result score @s dc_value run data get entity @s Health
execute if score @s dc_value matches ..6 run function dc_nightblood:hit/destroy
damage @s 6 minecraft:starve