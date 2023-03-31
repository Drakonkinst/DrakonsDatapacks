tp @s ~0.5 350 ~0.5
execute store result entity @s Pos[0] double 1 run data get entity @e[type=marker,tag=dc_rocketTarget,limit=1] data.X
execute store result entity @s Pos[2] double 1 run data get entity @e[type=marker,tag=dc_rocketTarget,limit=1] data.Z
tp @a[tag=dc_rocketPlayer,limit=1] @s
kill @s