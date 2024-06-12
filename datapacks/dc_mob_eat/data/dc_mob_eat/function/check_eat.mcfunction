execute store result score #InLove dc_value run data get entity @s InLove
# First 5 ticks of being in love, should be caught at this speed
execute if score #InLove dc_value matches 595..600 run function dc_mob_eat:attempt_heal