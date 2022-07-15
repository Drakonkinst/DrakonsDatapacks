# dc_rocketSuccess refers to launchpad which has dc_rocketId

tag @s add dc_rocketLaunching
scoreboard players set @s dc_rocketCountdown 20
scoreboard players operation @s dc_rocketId = @e[type=marker,tag=dc_rocketSuccess,limit=1] dc_rocketId
playsound minecraft:block.wooden_door.close block @s ~ ~ ~ 1 0
tellraw @s ["",{"text":"[","color":"gray"},{"text":"Launchpad Terminal","color":"dark_aqua"},{"text":"] ","color":"gray"},{"text":"Initiating launch sequence...","color":"white"}]
title @s title ["",{"text":"Launching in 5...","color":"white"}]
