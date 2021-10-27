summon armor_stand ~ ~ ~ {Tags:["dc_newAxe","dc_thrownAxe","creativeThrower","dc_recallAxe"],Marker:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:diamond_axe",Count:1b},{}],Pose:{Head:[180f,0f,0f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,0f]}}
#data modify entity @e[type=armor_stand,tag=dc_newAxe,sort=nearest,limit=1] Rotation set from entity @p Rotation
execute rotated as @p run tp @s ~ ~ ~ ~ ~
data modify entity @e[type=armor_stand,tag=dc_newAxe,sort=nearest,limit=1] HandItems[0] set from entity @s Item
execute as @e[type=armor_stand,tag=dc_newAxe,sort=nearest,limit=1] run function dc_throwable_axes:add_item_tags
tag @e[type=armor_stand,tag=dc_newAxe,sort=nearest,limit=1] remove dc_newAxe
kill @s