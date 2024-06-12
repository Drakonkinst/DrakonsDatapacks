execute store result score #FoodLevel dc_value run data get entity @s foodLevel
execute unless score #FoodLevel dc_value matches 20.. run effect give @s minecraft:saturation 4 0 true
execute unless score #FoodLevel dc_value matches 20.. run playsound minecraft:entity.generic.eat player @a