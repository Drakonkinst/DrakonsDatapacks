tag @s add dc_vampireAnchor
execute as @e[type=bat,distance=..7] at @s run function dc_vampire:bat_explode
execute if entity @s[tag=dc_absorbSuccess] run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.5 2
tag @s remove dc_absorbSuccess
tag @s remove dc_vampireAnchor
scoreboard players reset @s dc_vampireSneak