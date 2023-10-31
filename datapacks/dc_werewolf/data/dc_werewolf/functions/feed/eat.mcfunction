effect give @a[tag=dc_targetWerewolf,limit=1] saturation 4 0 true

execute store result score #FoodLevel dc_value run data get entity @a[tag=dc_targetWerewolf,limit=1] foodLevel
execute if score #FoodLevel dc_value matches 20.. run scoreboard players set @s dc_werewolfEat 20

playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1 1
particle minecraft:heart ~ ~1 ~ 0.25 0.25 0.25 0 5
data modify entity @s InLove set value 0