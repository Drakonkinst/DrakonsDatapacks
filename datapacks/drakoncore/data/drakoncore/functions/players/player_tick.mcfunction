# Runs 20 times per second on each player

function drakoncore:commands/check_command
execute if score @s dc_interact matches 1.. run function drakoncore:players/interact/check_interact
execute if score @s dc_awaitPlayerInteract matches 1.. run function drakoncore:players/player_interact/check_for_entity
execute if entity @s[tag=dc_awaitingPlayerInteract] unless score @s dc_awaitPlayerInteract matches 1.. run function drakoncore:players/player_interact/delete_entity
function #drakoncore:player_tick