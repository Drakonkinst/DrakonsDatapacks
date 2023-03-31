scoreboard players set @s dc_damageDelay 5
tag @s add damageDelay
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.85
summon armor_stand ^0.375 ^ ^ {Tags:["dc_newAxe","dc_thrownAxe"],Marker:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:diamond_axe",Count:1b},{}],Pose:{Head:[180f,0f,0f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,0f]}}
data modify entity @e[type=armor_stand,tag=dc_newAxe,sort=nearest,limit=1] Rotation set from entity @s Rotation