# Runs on player counting down to rocket launch

execute at @e[tag=dc_launchpad,limit=1,sort=nearest] run tp @s ~ ~ ~
execute if score @s dc_rocketCountdown matches 18 run playsound minecraft:entity.ender_dragon.growl master @a ~ ~-5 ~ 0.1 0
execute if score @s dc_rocketCountdown matches 16 run title @s title ["",{"text":"Launching in 4...","color":"white"}]t
execute if score @s dc_rocketCountdown matches 12 run title @s title ["",{"text":"Launching in 3...","color":"yellow"}]
execute if score @s dc_rocketCountdown matches 12 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ .5 0
execute if score @s dc_rocketCountdown matches 8 run title @s title ["",{"text":"Launching in 2...","color":"gold"}]
execute if score @s dc_rocketCountdown matches 8 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ .5 0
execute if score @s dc_rocketCountdown matches 4 run title @s title ["",{"text":"Launching in 1...","color":"red"}]
execute if score @s dc_rocketCountdown matches 4 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 2 2
execute if score @s dc_rocketCountdown matches 4 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ .5 0
particle minecraft:flame ~ ~-0.5 ~ 0 0 0 1 5

scoreboard players remove @s dc_rocketCountdown 1
execute if score @s dc_rocketCountdown matches 0 run function dc_rocket_travel:launchpad/launch