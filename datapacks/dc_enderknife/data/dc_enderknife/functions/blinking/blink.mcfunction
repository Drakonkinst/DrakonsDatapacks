execute at @s run tp @a[tag=dc_currentSwordThrower,limit=1] ~ ~ ~
execute as @a[tag=dc_currentSwordThrower,limit=1] run function drakoncore:api/unstuck
execute if entity @a[tag=dc_currentSwordThrower,limit=1,distance=..3] as @s run function dc_enderknife:drop/drop_blinking