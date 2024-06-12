scoreboard players set #SnifferBoost dc_value 1
scoreboard players set @s dc_snifferBoost 600
playsound minecraft:entity.ender_dragon.flap neutral @a
playsound minecraft:entity.sniffer.happy neutral @a ~ ~ ~ 1 1.25
playsound minecraft:entity.sniffer.eat neutral @a ~ ~ ~ 2 1

# Increase health by 1 heart, same as if fed normally
execute store result score #Health dc_value run data get entity @s Health
scoreboard players add #Health dc_value 2
execute if score #Health dc_value matches 15.. run scoreboard players set #Health dc_value 15
execute store result entity @s Health float 1 run scoreboard players get #Health dc_value