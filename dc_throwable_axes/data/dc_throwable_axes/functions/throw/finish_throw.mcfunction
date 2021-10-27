data modify entity @e[type=armor_stand,tag=dc_newAxe,sort=nearest,limit=1] HandItems[0].tag.Thrower set from entity @s UUID
execute if entity @s[gamemode=creative] run tag @e[type=armor_stand,tag=dc_newAxe,sort=nearest,limit=1] add creativeThrower
execute as @e[type=armor_stand,tag=dc_newAxe,sort=nearest,limit=1] run function dc_throwable_axes:add_item_tags
tag @e[type=armor_stand,tag=dc_newAxe,sort=nearest,limit=1] remove dc_newAxe