# Run when a player logs in
execute unless score @s dc_playerId matches 1.. run function drakoncore:internal/players/assign_id
function #drakoncore:player_login
scoreboard players reset @s dc_login