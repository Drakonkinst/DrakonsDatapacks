# Runs once per second on each player

execute if score @s dc_login matches 0.. run function drakoncore:players/player_login
execute if entity @s[tag=dc_dead_player] unless predicate drakoncore:is_player_dead run function drakoncore:players/on_player_respawn
function #drakoncore:player_tick20