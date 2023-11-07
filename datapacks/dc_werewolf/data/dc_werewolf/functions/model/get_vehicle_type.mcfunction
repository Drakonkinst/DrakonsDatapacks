# Only cover vehicles that can hold more than one player
execute if entity @s[type=boat] run scoreboard players set #VehicleType dc_value 1
execute if entity @s[type=camel] run scoreboard players set #VehicleType dc_value 2