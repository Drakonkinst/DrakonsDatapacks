playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1 1
particle minecraft:item minecraft:salmon ~ ~ ~ 0.1 0.1 0.1 0.1 10
scoreboard players remove @s dc_polarBearEat 1
execute unless score @s dc_polarBearEat matches 1.. run function dc_polar_bear:eat/finish_eating