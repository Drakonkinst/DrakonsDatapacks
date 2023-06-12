data modify storage dc_reforest:item Item set from entity @s Item
scoreboard players reset #IsSapling dc_value
execute as @e[type=minecraft:armor_stand,x=-1,y=-129,z=-1,dx=1,dy=1,dz=1,tag=dc_utility,limit=1] run function dc_reforest:do_sapling_check
execute if score #IsSapling dc_value matches 1 run tag @s add dc_reforestSapling