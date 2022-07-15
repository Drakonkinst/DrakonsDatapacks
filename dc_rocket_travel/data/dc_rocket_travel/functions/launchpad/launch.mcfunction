title @s title ""
tellraw @s ["",{"text":"[","color":"gray"},{"text":"Launchpad Terminal","color":"dark_aqua"},{"text":"] ","color":"gray"},{"text":"Have a safe journey!","color":"white"}]
tag @s add dc_rocketInFlight
tag @e[type=marker,limit=1,tag=dc_startingLaunch,tag=dc_launchpad,sort=nearest] remove dc_startingLaunch

# Lights & Sounds!
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 4
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 50 1
playsound minecraft:entity.wither.death master @s ~ ~ ~ 50 0
playsound minecraft:item.elytra.flying master @s ~ ~ ~ 32 0
playsound minecraft:block.portal.travel master @s ~ ~ ~ 50 0

# TODO: Summon armor stand
function dc_rocket_travel:summon/rocket

scoreboard players reset @s dc_rocketCountdown
tag @s remove dc_rocketLaunching