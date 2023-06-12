tag @s add dc_leashAnchor
scoreboard players reset #UsingParachute dc_value
execute as @e[type=#dc_parachute:parachute_mobs,distance=..16] on leasher if entity @s[tag=dc_leashAnchor] run scoreboard players add #UsingParachute dc_value 1
execute if score #UsingParachute dc_value matches 1.. run effect give @s minecraft:slow_falling 1 0 true
tag @s remove dc_leashAnchor