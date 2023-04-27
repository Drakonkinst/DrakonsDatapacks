execute unless score @s dc_polarBearEat matches ..4 run function dc_polar_bear:eat/eat_effects
scoreboard players remove @s dc_polarBearEat 1
execute unless score @s dc_polarBearEat matches 1.. run function dc_polar_bear:eat/finish_eating