# Move bat (old)
execute if entity @s[tag=!dc_inWater] at @s rotated as @a[tag=dc_batflyPlayer,limit=1] run tp ^ ^ ^0.4
execute if entity @s[tag=dc_inWater] at @s rotated as @a[tag=dc_batflyPlayer,limit=1] run tp ^ ^ ^0.15
execute at @s run tp @a[tag=dc_batflyPlayer,limit=1] ~ ~-1 ~ ~ ~