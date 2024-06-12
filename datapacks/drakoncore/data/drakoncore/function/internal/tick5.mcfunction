# Runs 4 times per second globally

schedule function drakoncore:internal/tick5 5t
function #drakoncore:tick5
execute as @a at @s run function drakoncore:internal/players/player_tick5
execute as @e[type=#drakoncore:interact,tag=dc_interactable] at @s if entity @a[limit=1,distance=..5] run function drakoncore:internal/interact/tick5