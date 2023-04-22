tag @s[gamemode=survival] add dc_batfly0
tag @s[gamemode=creative] add dc_batfly1
tag @s[gamemode=adventure] add dc_batfly2
gamemode spectator @s

tag @s add dc_inBatfly
tag @s add dc_batflyAnchor
execute summon bat run function dc_vampire:batfly/setup_batfly
tag @s remove dc_batflyAnchor

# Effects
particle minecraft:dust 1 0 0 10 ~ ~1 ~ 0.4 0.4 0.4 0 15
playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 1 1
playsound minecraft:entity.bat.ambient player @a ~ ~ ~ 0.1 1