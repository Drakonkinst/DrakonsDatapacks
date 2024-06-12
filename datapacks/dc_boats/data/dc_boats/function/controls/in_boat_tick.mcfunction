scoreboard players set #IsMainDriver dc_value 1
execute on vehicle on vehicle run scoreboard players reset #IsMainDriver dc_value
execute if score #IsMainDriver dc_value matches 1 run function dc_boats:controls/drive_boat_tick