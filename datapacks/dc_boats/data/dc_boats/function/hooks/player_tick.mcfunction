# Runs 20 times per second on each player

# Check if player is in a boat
scoreboard players reset #InBoat dc_value
execute on vehicle if entity @s[type=#drakoncore:boats] run scoreboard players set #InBoat dc_value 1

# Check if player is looking at a boat
# NOTE: Disabling boat-leashing functionality since Minecraft implemented their own version that serves the same purpose
# RIP funny large and clunky boats
# execute if predicate dc_boats:holding_lead unless score #InBoat dc_value matches 1 if entity @e[type=#drakoncore:boats,distance=..10,limit=1] run function dc_boats:look_detection/check_looking_at_boat
# execute if entity @s[tag=dc_awaitingBoatLead,tag=!dc_lookingAtBoat] run function dc_boats:look_detection/deinit_player_interact
# execute if entity @s[tag=dc_lookingAtBoat] run function dc_boats:display_prompt
# tag @s remove dc_lookingAtBoat

execute if score #InBoat dc_value matches 1 run function dc_boats:controls/in_boat_tick