# Runs 20 times per second on each player

execute unless score @s help matches 0 run function drakoncore:internal/commands/help/help
execute unless score @s mods matches 0 run function drakoncore:internal/commands/mods/mods
execute unless score @s config matches 0 run function drakoncore:internal/commands/config/config
execute if score @s dc_interact matches 1.. run function drakoncore:internal/interact/check_interact
execute if score @s dc_awaitPlayerInteract matches 1.. run function drakoncore:internal/players/player_interact/check_for_entity
execute if entity @s[tag=dc_awaitingPlayerInteract] unless score @s dc_awaitPlayerInteract matches 1.. run function drakoncore:internal/players/player_interact/delete_entity
function #drakoncore:player_tick