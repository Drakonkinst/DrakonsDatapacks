tag @s add dc_lungingPolarBear
execute if score @s dc_polarBearLunge matches 150.. as @e[type=#dc_polar_bear:lunge_damageable,tag=!dc_polarBearLunged,type=!polar_bear,distance=..2] run function dc_polar_bear:lunge/on_lunge_hit
execute if score @s dc_polarBearLunge matches 150 run function dc_polar_bear:lunge/lunge_end
tag @s remove dc_lungingPolarBear