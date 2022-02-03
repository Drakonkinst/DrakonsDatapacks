execute store result score @s dc_value run data get entity @s Item.Count
scoreboard players remove @s dc_value 1
execute if score @s dc_value matches 1.. store result entity @s Item.Count int 1 run scoreboard players get @s dc_value
execute unless score @s dc_value matches 1.. run kill @s
tag @s remove dc_prismarineShard