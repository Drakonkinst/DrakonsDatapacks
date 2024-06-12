# Runs once every 5 seconds globally

schedule function drakoncore:internal/tick100 5s
function #drakoncore:tick100
execute as @a at @s run function drakoncore:internal/players/player_tick100
execute as @e[type=villager,tag=dc_interact] at @s unless entity @a[limit=1,distance=..5] run function drakoncore:api/clear_entity