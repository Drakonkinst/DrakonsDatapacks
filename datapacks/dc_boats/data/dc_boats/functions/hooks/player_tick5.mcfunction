# Runs 4 times per second on each player

execute if predicate dc_boats:holding_lead run function dc_boats:look_detection/check_looking_at_boat
execute if entity @s[tag=dc_awaitingBoatLead,tag=!dc_lookingAtBoat] run function dc_boats:look_detection/deinit_player_interact
execute if entity @s[tag=dc_lookingAtBoat] run function dc_boats:display_prompt
tag @s remove dc_lookingAtBoat