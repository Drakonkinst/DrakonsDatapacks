tag @s add dc_attackingPolarBear
execute at @s as @e[type=polar_bear,distance=..20] run function dc_polar_bear:on_attacked
tag @s remove dc_attackingPolarBear
advancement revoke @s only dc_polar_bear:hit_polar_bear