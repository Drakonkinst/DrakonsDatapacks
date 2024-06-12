scoreboard players set #RaycastLength dc_value 5
execute anchored eyes positioned ^ ^ ^1 run function dc_boats:look_detection/raycast
scoreboard players reset #RaycastLength dc_value