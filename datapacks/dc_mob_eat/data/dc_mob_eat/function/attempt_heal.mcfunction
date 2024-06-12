execute store result score #MaxHealth dc_value run attribute @s minecraft:generic.max_health get 10
execute store result score #Health dc_value run data get entity @s Health 10
execute if score #Health dc_value < #MaxHealth dc_value at @s run function dc_mob_eat:on_eat