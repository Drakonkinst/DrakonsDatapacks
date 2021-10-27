summon armor_stand ~ ~-0.55 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Marker:1b,DisabledSlots:2039583,Tags:["dc_te_model","new"]}
data modify entity @s Item.tag.Thrower set from entity @s Thrower
data modify entity @e[type=armor_stand,limit=1,tag=dc_te_model,tag=new] HandItems[0] set from entity @s Item
execute if data entity @s Item.tag.Throwable as @e[type=armor_stand,limit=1,tag=dc_te_model,tag=new] run function dc_tool_embed:tag_throwable
execute as @e[type=armor_stand,limit=1,tag=dc_te_model,tag=new] at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,limit=1,tag=dc_te_model,tag=new] at @s rotated as @p run tp @s ^0.2 ^ ^

# cause a block update: swap between air and cave air
execute if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:void_air replace
execute if block ~ ~ ~ minecraft:cave_air run setblock ~ ~ ~ minecraft:air replace
execute if block ~ ~ ~ minecraft:void_air run setblock ~ ~ ~ minecraft:cave_air replace