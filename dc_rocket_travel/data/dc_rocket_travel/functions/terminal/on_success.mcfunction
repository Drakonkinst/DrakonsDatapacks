# Message before launchpad activation
execute unless entity @e[type=marker,tag=dc_launchpad,tag=!dc_startingLaunch,distance=..25,limit=1] run tellraw @s {"text":"No launchpad is available!","color":"red"}
execute if entity @e[type=marker,tag=dc_launchpad,tag=!dc_startingLaunch,distance=..25,limit=1] run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Launchpad Terminal","color":"dark_aqua"},{"text":"] ","color":"gray"},{"selector":"@e[type=marker,tag=dc_rocketLocation,tag=dc_rocketTarget,limit=1]","color":"green"},{"text":" selected! Please proceed to the ","color":"none"},{"text":"Rocket Launchpad","color":"green"},{"text":".","color":"none"}]

# Activate random launchpad nearby
execute as @e[type=marker,tag=dc_launchpad,tag=!dc_startingLaunch,distance=..25,limit=1,sort=random] at @s run function dc_rocket_travel:launchpad/activate

tag @e[type=marker,tag=dc_rocketLocation,tag=dc_rocketTarget,limit=1] remove dc_rocketTarget