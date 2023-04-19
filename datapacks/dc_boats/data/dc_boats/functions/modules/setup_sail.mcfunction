data modify entity @s item set from storage dc_boats:item Item
data modify entity @s transformation set value {scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f, 0.0f, 0.0f, 1.0f],translation:[0.0f,0.6f,0.0f]}
tag @s add dc_boatSail
ride @s mount @e[type=#drakoncore:boats,distance=..2,limit=1,tag=dc_targetBoat]
execute at @s run particle minecraft:white_ash ~ ~1 ~ 0.5 0.5 0.5 10 75
execute at @s run playsound minecraft:entity.villager.work_fletcher block @a ~ ~ ~ 1 1