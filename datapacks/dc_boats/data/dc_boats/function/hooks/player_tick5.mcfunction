# Runs 4 times per second on each player
scoreboard players reset #InBoat dc_value
execute on vehicle if entity @s[type=#drakoncore:boats] run scoreboard players set #InBoat dc_value 1

execute if score #InBoat dc_value matches 1 run function dc_boats:controls/in_boat_tick5