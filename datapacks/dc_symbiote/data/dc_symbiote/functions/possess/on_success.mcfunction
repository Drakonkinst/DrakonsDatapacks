clear @s minecraft:spider_eye 1
tag @e[type=!#dc_symbiote:invalid_host,tag=dc_filter,limit=1] add dc_symbioteTarget
tag @s add dc_symbioteMoving

playsound minecraft:entity.drowned.step player @a ~ ~ ~ 1 0
playsound minecraft:entity.player.burp player @s ~ ~ ~ 1 1

tag @s[gamemode=survival] add dc_possess0
tag @s[gamemode=creative] add dc_possess1
tag @s[gamemode=adventure] add dc_possess2
gamemode spectator @s