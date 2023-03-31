# Runs 4 times per second globally

function #drakoncore:tick5
execute as @a at @s run function drakoncore:players/player_tick5
execute as @e at @s run function drakoncore:entities/entity_tick5
schedule function drakoncore:tick5 5t