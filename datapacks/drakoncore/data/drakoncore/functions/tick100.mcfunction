# Runs once every 5 seconds globally

function #drakoncore:tick100
execute as @a at @s run function drakoncore:players/player_tick100
execute as @e[type=villager,tag=dc_interact] at @s unless entity @a[limit=1,distance=..5] run function drakoncore:utils/clear_entity
schedule function drakoncore:tick100 5s