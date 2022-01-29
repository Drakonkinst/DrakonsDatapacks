tag @s remove dc_nbUnsheathing
tag @s add dc_nbActive
tag @s add dc_nbLockout
playsound minecraft:entity.wither.death player @a ~ ~ ~ 0.5 1.5
playsound minecraft:entity.zombie.ambient player @a ~ ~ ~ 1 0
playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 0.5 0.5
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 0.5
effect clear @s strength
scoreboard players set @s dc_nbUse 0