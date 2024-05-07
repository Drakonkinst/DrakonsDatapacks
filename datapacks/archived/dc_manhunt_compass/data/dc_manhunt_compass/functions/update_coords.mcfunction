tp @s @a[tag=dc_speedrunner,limit=1]
execute store result entity @s ArmorItems[0].tag.LodestonePos.X int 1 run data get entity @a[tag=dc_speedrunner,limit=1] Pos[0]
execute store result entity @s ArmorItems[0].tag.LodestonePos.Y int 1 run data get entity @a[tag=dc_speedrunner,limit=1] Pos[1]
execute store result entity @s ArmorItems[0].tag.LodestonePos.Z int 1 run data get entity @a[tag=dc_speedrunner,limit=1] Pos[2]
data modify entity @s ArmorItems[0].tag.LodestoneDimension set from entity @a[tag=dc_speedrunner,limit=1] Dimension