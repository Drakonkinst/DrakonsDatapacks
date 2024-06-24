execute store result score #Count dc_value run data get entity @s Item.count
scoreboard players remove #Count dc_value 1
execute if score #Count dc_value matches 1.. store result entity @s Item.count int 1 run scoreboard players get #Count dc_value
execute unless score #Count dc_value matches 1.. run kill @s