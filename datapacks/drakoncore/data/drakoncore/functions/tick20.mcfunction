# Runs once every second globally

function #drakoncore:tick20
execute as @a at @s run function drakoncore:players/player_tick20
schedule function drakoncore:tick20 1s