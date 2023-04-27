damage @s 7 mob_attack by @e[type=polar_bear,tag=dc_lungingPolarBear,limit=1]
particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 normal
execute if entity @s[type=#drakoncore:boats] run playsound minecraft:entity.zombie.break_wooden_door hostile @a
effect give @s slowness 3 0 true
tag @s add dc_polarBearLunged