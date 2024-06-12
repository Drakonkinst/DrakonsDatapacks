playsound minecraft:entity.ender_dragon.flap player @s ~ ~ ~ 10 .7
kill @e[type=armor_stand,tag=dc_rocketEngine,limit=1,sort=nearest]

# Teleport go brrr
tag @s add dc_rocketPlayer
execute as @e[type=marker,tag=dc_rocketLocation] if score @s dc_rocketId = @a[tag=dc_rocketPlayer,limit=1] dc_rocketId run tag @s add dc_rocketTarget
summon marker ~ ~ ~ {Tags:["dc_rocketTeleport"]}
execute as @e[type=marker,tag=dc_rocketTeleport,limit=1] at @s run function dc_rocket_travel:flight/teleport
tag @s remove dc_rocketPlayer
tag @e[type=marker,tag=dc_rocketLocation] remove dc_rocketTarget

execute at @s run function dc_rocket_travel:flight/finish_travel_effects
function dc_rocket_travel:flight/end_travel