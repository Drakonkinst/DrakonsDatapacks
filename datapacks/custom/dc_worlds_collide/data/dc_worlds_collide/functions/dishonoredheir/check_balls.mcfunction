scoreboard players set #NumBalls dc_value 0
execute store result score #NumBalls dc_value run clear @s minecraft:heart_of_the_sea{Balls:1b} 0
execute if score #NumBalls dc_value matches 2.. run function dc_worlds_collide:dishonoredheir/heal