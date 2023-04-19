# Runs 4 times per second on each player
scoreboard players operation #CurrentPlayer dc_playerId = @s dc_playerId
execute if data entity @s RootVehicle.Entity{id:"minecraft:boat"} run tag @s add dc_inBoat
execute if data entity @s RootVehicle.Entity{id:"minecraft:chest_boat"} run tag @s add dc_inBoat

execute if entity @s[tag=dc_inBoat] run function dc_boats:controls/in_boat_tick5

tag @s remove dc_inBoat