# Move bat (new)
execute at @s rotated as @a[tag=dc_batflyPlayer,limit=1] run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=!dc_inWater] at @s rotated as @a[tag=dc_batflyPlayer,limit=1] run tp ^ ^ ^0.4
execute if entity @s[tag=dc_inWater] at @s rotated as @a[tag=dc_batflyPlayer,limit=1] run tp ^ ^ ^0.15

# Teleport player (new)
execute at @s run tp @a[tag=dc_batflyPlayer,limit=1] @s
execute as @a[tag=dc_batflyPlayer,limit=1] at @s run tp @s ~ ~-1 ~ ~ ~