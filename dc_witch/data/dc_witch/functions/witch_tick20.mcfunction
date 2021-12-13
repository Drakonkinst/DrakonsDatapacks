effect give @s[tag=dc_witchFloat] slow_falling 1 0 true
execute if score @s dc_witchCooldown matches 1 run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.5 1
execute if score @s dc_witchCooldown matches 1.. run scoreboard players remove @s dc_witchCooldown 1