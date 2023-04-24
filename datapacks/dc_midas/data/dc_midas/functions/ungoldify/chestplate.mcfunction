tag @s add dc_midasAnchor
execute in minecraft:overworld as @e[type=minecraft:armor_stand,x=-1,y=-129,z=-1,dx=1,dy=1,dz=1,tag=dc_utility,limit=1] run function dc_midas:internal/unconvert_chestplate
tag @s remove dc_midasAnchor