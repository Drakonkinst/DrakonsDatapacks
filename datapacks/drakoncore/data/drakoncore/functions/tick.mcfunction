# Runs 20 times per second globally

function #drakoncore:tick
execute as @a at @s run function drakoncore:players/player_tick
execute as @e at @s run function drakoncore:entities/entity_tick