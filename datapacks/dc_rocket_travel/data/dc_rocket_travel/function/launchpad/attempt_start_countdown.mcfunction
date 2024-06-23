tag @p[distance=..1,tag=!dc_rocketDeny,tag=!dc_rocketLaunching,gamemode=!spectator] add dc_rocketPlayer

# TODO: Rocket payment
tag @s add dc_rocketSuccess
tag @s[tag=!dc_rocketSuccess] add dc_rocketDeny

scoreboard players reset @s[tag=dc_rocketSuccess] dc_rocketCountdown
tag @s[tag=dc_rocketSuccess] add dc_startingLaunch
tag @s[tag=dc_rocketSuccess] remove dc_active
execute if entity @s[tag=dc_rocketSuccess] as @a[tag=dc_rocketPlayer,limit=1] run function dc_rocket_travel:launchpad/start_countdown
tag @s remove dc_rocketSuccess

tag @a remove dc_rocketPlayer