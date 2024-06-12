# Runs 20 times per second on each player
execute if entity @s[tag=dc_hasUmbrella,gamemode=!spectator] run function dc_umbrella:update_umbrella
execute unless score @s umbrella matches 0 run function dc_umbrella:color_command