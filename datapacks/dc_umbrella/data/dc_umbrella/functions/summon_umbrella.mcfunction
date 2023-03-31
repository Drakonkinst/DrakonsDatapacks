summon armor_stand ~ 0 ~ {Marker:1b,Invisible:1b,Tags:["dc_umbrella","new"],ArmorItems:[{},{},{},{id:"minecraft:white_carpet",Count:1b}]}
summon armor_stand ~ 0 ~ {Marker:1b,Invisible:1b,Tags:["dc_umbrellaStand","new"],HandItems:[{id:"minecraft:stick",Count:1b},{}],Pose:{RightArm:[260f,0f,0f]},Small:1b}
execute store result score @s dc_temp_id run data get entity @s UUID[0]
scoreboard players operation @e[type=armor_stand,tag=dc_umbrella,tag=new,limit=1] dc_temp_id = @s dc_temp_id
scoreboard players operation @e[type=armor_stand,tag=dc_umbrellaStand,tag=new,limit=1] dc_temp_id = @s dc_temp_id
tag @e[type=armor_stand,tag=dc_umbrella,tag=new,limit=1] remove new
tag @e[type=armor_stand,tag=dc_umbrellaStand,tag=new,limit=1] remove new
playsound minecraft:item.armor.equip_generic player @a

# Causes tag leakage if run individually! Run function dc_umbrella:unmark_umbrella and dc_umbrella:unmark_umbrella_stand to fix
function dc_umbrella:mark_umbrella
function dc_umbrella:apply_color