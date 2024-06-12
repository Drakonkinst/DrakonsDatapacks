execute store result score @s dc_yPos run data get entity @s Pos[1]
execute if score @s dc_yPos matches 60.. if predicate dc_shiny_toe:chance_shiny_toe_teleport as @e[type=zombie,tag=shiny_toe,limit=1] run function dc_shiny_toe:dash
advancement revoke @s only dc_shiny_toe:shiny_toe_hit