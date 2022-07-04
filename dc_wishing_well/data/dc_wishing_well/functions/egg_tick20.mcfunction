scoreboard players add @s dc_eggProgress 1
execute if score @s dc_eggProgress matches 4.. run function dc_wishing_well:egg_break
execute if score @s dc_eggProgress matches ..3 run function dc_wishing_well:egg_progress