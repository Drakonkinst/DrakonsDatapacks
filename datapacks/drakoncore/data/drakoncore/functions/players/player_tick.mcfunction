# Runs 20 times per second on each player

function drakoncore:commands/check_command
execute if score @s dc_interact matches 1.. run function drakoncore:players/interact/check_interact
function #drakoncore:player_tick