effect give @e[tag=dc_filter,limit=1] levitation 10 1 false
tag @s add dc_success

scoreboard players set @s dc_witchCooldown 30
xp add @s -5 levels
playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 0.3 0.9
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 1
playsound minecraft:entity.wither.ambient player @a ~ ~ ~ 0.2 2
playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1 1