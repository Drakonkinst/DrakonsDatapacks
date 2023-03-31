tag @s add dc_hasGrave
summon armor_stand ~ ~-1.39 ~ {Invulnerable:1b,Invisible:1b,Tags:["dc_grave","new"],Pose:{Head:[0f,0f,350f]},DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:cobblestone_wall",Count:1b}],NoGravity:1b,HandItems:[{},{}],CustomNameVisible:1b,CustomName:"\"Revive Me!\""}
execute store result score @s dc_temp_id run data get entity @s UUID[0]
scoreboard players set @s dc_reviveTick 0
tag @s add dc_spawningGrave
execute as @e[type=armor_stand,tag=dc_grave,tag=new,limit=1] run function dc_player_revive:setup_grave
tag @s remove dc_spawningGrave
