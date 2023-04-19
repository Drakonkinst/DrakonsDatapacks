# Runs 20 times per second on each player

# Check if player is in a boat
scoreboard players operation #CurrentPlayer dc_playerId = @s dc_playerId
execute if data entity @s RootVehicle.Entity{id:"minecraft:boat"} run tag @s add dc_inBoat
execute if data entity @s RootVehicle.Entity{id:"minecraft:chest_boat"} run tag @s add dc_inBoat

# Check if player is looking at a boat
execute if predicate dc_boats:holding_lead unless entity @s[tag=dc_inBoat] run function dc_boats:look_detection/check_looking_at_boat
execute if entity @s[tag=dc_awaitingBoatLead,tag=!dc_lookingAtBoat] run function dc_boats:look_detection/deinit_player_interact
execute if entity @s[tag=dc_lookingAtBoat] run function dc_boats:display_prompt
tag @s remove dc_lookingAtBoat

execute if entity @s[tag=dc_inBoat] run function dc_boats:controls/in_boat_tick

tag @s remove dc_inBoat