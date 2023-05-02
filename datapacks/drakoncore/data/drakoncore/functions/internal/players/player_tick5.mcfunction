# Runs 4 times per second on each player
execute if entity @s[tag=dc_check_crafting] run function drakoncore:internal/items/check_crafting
function #drakoncore:player_tick5