execute if predicate drakoncore:under_sky run tag @s add dc_underOpenSky
execute if entity @s[tag=dc_underOpenSky] run function dc_rocket_travel:launchpad/attempt_start_countdown
execute if entity @s[tag=!dc_underOpenSky] run tellraw @a[distance=..1] {"text":"This launchpad is not usable unless it is under open sky!","color":"red"}
execute if entity @s[tag=!dc_underOpenSky] run tag @a[distance=..1] add dc_rocketDeny
tag @s remove dc_underOpenSky