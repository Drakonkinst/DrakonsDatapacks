# Runs once every second globally

function #drakoncore:tick20
execute as @a at @s run function drakoncore:players/player_tick20
execute as @e at @s run function drakoncore:entities/entity_tick20
schedule function drakoncore:tick20 1s