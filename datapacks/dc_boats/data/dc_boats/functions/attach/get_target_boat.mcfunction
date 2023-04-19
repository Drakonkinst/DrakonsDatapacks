scoreboard players set #RaycastLength dc_value 5
scoreboard players reset #BoatFound dc_value
execute anchored eyes positioned ^ ^ ^1 run function dc_boats:attach/raycast
scoreboard players reset #RaycastLength dc_value