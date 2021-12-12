execute at @s anchored eyes positioned ^ ^ ^1 run function dc_witch:spell/summon/on_succeed
execute at @e[type=item,distance=..20] run particle minecraft:electric_spark ~ ~ ~ 0 0 0 1 5 normal
tp @e[type=item,distance=..20] @s