damage @s 7 mob_attack by @e[type=polar_bear,tag=dc_lungingPolarBear,limit=1]
tag @s remove dc_polarBearLunged
execute at @s run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 normal
effect give @s slowness 5 0 true