advancement revoke @s everything
recipe take @s *
clear @s
scoreboard players reset @s dc_storedXP
xp set @s 0 levels
xp set @s 0 points
gamemode survival @s

# Ender Chest
# To check if a player has Ender Chest items: /data get entity @s EnderItems
item replace entity @s enderchest.0 with minecraft:air
item replace entity @s enderchest.1 with minecraft:air
item replace entity @s enderchest.2 with minecraft:air
item replace entity @s enderchest.3 with minecraft:air
item replace entity @s enderchest.4 with minecraft:air
item replace entity @s enderchest.5 with minecraft:air
item replace entity @s enderchest.6 with minecraft:air
item replace entity @s enderchest.7 with minecraft:air
item replace entity @s enderchest.8 with minecraft:air
item replace entity @s enderchest.9 with minecraft:air
item replace entity @s enderchest.10 with minecraft:air
item replace entity @s enderchest.11 with minecraft:air
item replace entity @s enderchest.12 with minecraft:air
item replace entity @s enderchest.13 with minecraft:air
item replace entity @s enderchest.14 with minecraft:air
item replace entity @s enderchest.15 with minecraft:air
item replace entity @s enderchest.16 with minecraft:air
item replace entity @s enderchest.17 with minecraft:air
item replace entity @s enderchest.18 with minecraft:air
item replace entity @s enderchest.19 with minecraft:air
item replace entity @s enderchest.20 with minecraft:air
item replace entity @s enderchest.21 with minecraft:air
item replace entity @s enderchest.22 with minecraft:air
item replace entity @s enderchest.23 with minecraft:air
item replace entity @s enderchest.24 with minecraft:air
item replace entity @s enderchest.25 with minecraft:air
item replace entity @s enderchest.26 with minecraft:air

# Playable Classes
tag @s remove dc_enderman
tag @s remove dc_vampire
tag @s remove dc_midas
tag @s remove dc_symbiote
tag @s remove dc_witch

tellraw @s {"text":"Your progress has been reset. Time for a new beginning!","color":"green"}

tag @s add dc_world_reset