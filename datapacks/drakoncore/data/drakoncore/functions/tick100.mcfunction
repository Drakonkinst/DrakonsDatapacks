# Runs once every 5 seconds globally

function #drakoncore:tick100
execute as @a at @s run function drakoncore:players/player_tick100
execute as @e at @s run function drakoncore:entities/entity_tick100
schedule function drakoncore:tick100 5s