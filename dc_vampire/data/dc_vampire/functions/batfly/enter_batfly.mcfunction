summon bat ~ ~ ~ {NoAI:1b,Tags:["new","dc_batfly"],PersistenceRequired:1b}
execute store result score @e[type=bat,tag=dc_batfly,tag=new,limit=1] dc_temp_id run data get entity @s UUID[0]
tag @e[type=bat,tag=dc_batfly] remove new
tag @s add dc_inBatfly
tag @s[gamemode=survival] add dc_batfly0
tag @s[gamemode=creative] add dc_batfly1
tag @s[gamemode=adventure] add dc_batfly2
gamemode spectator @s

# Enable emergency stop
scoreboard players enable @s dc_vampireStop
tellraw @s {"text":"Click HERE to stop bat flight","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger dc_vampireStop"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to leave bat flight!","color":"red"}]}}

# Effects
particle minecraft:dust 1 0 0 10 ~ ~1 ~ 0.4 0.4 0.4 0 15
playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 1 1
playsound minecraft:entity.bat.ambient player @a ~ ~ ~ 0.1 1