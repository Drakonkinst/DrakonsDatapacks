# Runs 4 times per second on each player

execute if entity @s[tag=dc_check_crafting,gamemode=!creative,gamemode=!spectator] run function drakoncore:items/check_crafting
execute if score @s dc_recentDeath matches 1.. run function drakoncore:players/on_player_death
execute if entity @s[tag=dc_dead] unless predicate drakoncore:is_player_dead run tag @s remove dc_dead
function #drakoncore:player_tick5