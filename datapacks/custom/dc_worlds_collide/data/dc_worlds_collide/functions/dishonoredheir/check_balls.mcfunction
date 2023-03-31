scoreboard players set @s dc_value 0
execute store result score @s dc_value run clear @s minecraft:heart_of_the_sea{Balls:1b} 0
execute if score @s dc_value matches 2.. run function dc_worlds_collide:dishonoredheir/heal