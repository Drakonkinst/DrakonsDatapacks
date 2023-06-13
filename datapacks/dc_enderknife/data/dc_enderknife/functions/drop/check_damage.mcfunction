scoreboard players reset #IsBroken dc_value
execute unless entity @s[tag=dc_noDamageThrow] in minecraft:overworld as @e[type=minecraft:armor_stand,x=-1,y=-129,z=-1,dx=1,dy=1,dz=1,tag=dc_utility,limit=1] run function dc_enderknife:drop/damage_item
execute unless score #IsBroken dc_value matches 1 run function dc_enderknife:drop/drop_survive
execute if score #IsBroken dc_value matches 1 run function dc_enderknife:drop/break