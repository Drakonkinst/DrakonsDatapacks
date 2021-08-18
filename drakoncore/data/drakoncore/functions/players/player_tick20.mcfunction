# Runs once per second on each player

execute if score @s dc_login matches 0.. run function drakoncore:players/player_login
function #drakoncore:player_tick20