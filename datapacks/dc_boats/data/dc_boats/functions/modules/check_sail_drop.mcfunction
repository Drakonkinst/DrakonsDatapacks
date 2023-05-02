scoreboard players set #NoVehicle dc_value 1
execute on vehicle run scoreboard players reset #NoVehicle dc_value
execute if score #NoVehicle dc_value matches 1 run function drakoncore:api/convert_item_display_to_item