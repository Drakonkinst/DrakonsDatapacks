particle minecraft:portal ~ ~1 ~ 0.25 0.5 0.25 0.01 10
execute if entity @a[distance=..1,limit=1,tag=!dc_rocketDeny,tag=!dc_rocketLaunching,tag=!dc_rocketInFlight,gamemode=!spectator] run function dc_rocket_travel:launchpad/check_sky
execute as @a[distance=2..5] at @s unless entity @e[distance=..1,tag=dc_launchpad,limit=1] run tag @s remove dc_rocketDeny