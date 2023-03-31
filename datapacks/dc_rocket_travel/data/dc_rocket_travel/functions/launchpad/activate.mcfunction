# Transfer rocket ID to launchpad and add dc_active to make it start ticking
scoreboard players operation @s dc_rocketId = @e[type=marker,tag=dc_rocketLocation,tag=dc_rocketTarget,limit=1] dc_rocketId
tag @s add dc_active
scoreboard players set @s dc_rocketCountdown 120
playsound minecraft:entity.wither.ambient block @a ~ ~ ~ 0.2 2