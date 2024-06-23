tag @n[type=armor_stand,tag=dc_rocketEngine,distance=..30] add dc_targetEngine
execute at @e[type=armor_stand,tag=dc_targetEngine,limit=1] run tp @s ~ ~ ~0.3
effect give @e[type=armor_stand,tag=dc_targetEngine,limit=1] minecraft:levitation 1 25 true
execute unless entity @e[type=armor_stand,tag=dc_targetEngine,limit=1] run function dc_rocket_travel:flight/end_travel
effect give @s minecraft:resistance 30 9 true
effect give @s minecraft:levitation 1 0 true

execute store result score @s dc_yPos run data get entity @s Pos[1]
execute at @s run particle minecraft:smoke ~ ~-1 ~ 0.1 0 0.1 0 7
execute at @s if score @s dc_yPos matches ..250 run particle minecraft:flame ~ ~-1 ~ 0.1 0 0.1 0 1
execute if score @s dc_yPos matches 600.. run function dc_rocket_travel:flight/finish_travel