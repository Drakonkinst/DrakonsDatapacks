# Runs 4 times per second on each player

execute if entity @s[tag=dc_check_crafting,gamemode=!creative,gamemode=!spectator] run function drakoncore:items/check_crafting
execute if score @s dc_recentDeath matches 1.. run function drakoncore:players/on_player_death
function #drakoncore:player_tick5