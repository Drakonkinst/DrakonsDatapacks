data modify storage dc_polar_bear:item Item set from entity @s Item
execute as @e[type=minecraft:armor_stand,x=-1,y=-129,z=-1,dx=1,dy=1,dz=1,tag=dc_utility,limit=1] run function dc_polar_bear:eat/check_item_type
execute if score #LikesToEat dc_value matches 1 run tag @s add dc_polarBearFood
tag @s add dc_polarBearChecked