data modify storage dc_throwable_axes:axe_data IsBroken set value 0b
execute unless entity @s[tag=dc_noDamageThrow] as @e[type=minecraft:armor_stand,x=-1,y=-129,z=-1,dx=1,dy=1,dz=1,tag=dc_utility,limit=1] run function dc_throwable_axes:drop/damage_item
execute unless data storage dc_throwable_axes:axe_data {IsBroken:1b} run function dc_throwable_axes:drop/drop_survive
execute if data storage dc_throwable_axes:axe_data {IsBroken:1b} run function dc_throwable_axes:drop/break