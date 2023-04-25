tag @s add dc_lungingPolarBear
execute as @e[type=#dc_polar_bear:lunge_damage,tag=dc_polarBearLunged,distance=..20] run function dc_polar_bear:ai/on_lunge_hit
tag @s remove dc_lungingPolarBear