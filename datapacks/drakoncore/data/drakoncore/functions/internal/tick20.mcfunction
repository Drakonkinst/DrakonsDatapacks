# Runs once every second globally

schedule function drakoncore:internal/tick20 1s
function #drakoncore:tick20
execute as @a at @s run function drakoncore:internal/players/player_tick20