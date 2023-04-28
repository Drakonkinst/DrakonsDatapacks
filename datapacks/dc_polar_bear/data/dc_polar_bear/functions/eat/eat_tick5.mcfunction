# Show eating particles until the last 20 (4 * 5 ticks per update) ticks
execute unless score @s dc_polarBearEat matches ..4 run function dc_polar_bear:eat/eat_effects

# Decrement and finish cycle
scoreboard players remove @s dc_polarBearEat 1
execute unless score @s dc_polarBearEat matches 1.. run function dc_polar_bear:eat/finish_eating