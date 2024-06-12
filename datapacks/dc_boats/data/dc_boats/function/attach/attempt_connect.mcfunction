scoreboard players reset #BoatConnectInvalid dc_value
scoreboard players reset #BoatPassengers dc_value

execute as @e[type=#drakoncore:boats,tag=dc_otherTargetedBoat,limit=1] on passengers run scoreboard players add #BoatPassengers dc_value 1

# Chest Boat must be on top of stack
execute unless score #BoatConnectInvalid dc_value matches 1 if entity @s[type=chest_boat] run function dc_boats:attach/error/chest_boat_vehicle

# Normal boat must have at least one passenger
execute unless score #BoatConnectInvalid dc_value matches 1 if entity @e[type=boat,tag=dc_otherTargetedBoat,limit=1] unless score #BoatPassengers dc_value matches 1.. run function dc_boats:attach/error/empty_vehicle

# Can only have one Boat passenger
execute unless score #BoatConnectInvalid dc_value matches 1 on passengers if entity @s[type=#drakoncore:boats] run function dc_boats:attach/error/max_boat_passengers
# Other must be within 10 blocks
execute unless score #BoatConnectInvalid dc_value matches 1 unless entity @e[type=#drakoncore:boats,tag=dc_otherTargetedBoat,limit=1,distance=..10] run function dc_boats:attach/error/too_far
execute unless score #BoatConnectInvalid dc_value matches 1 run function dc_boats:attach/connect_boats

# Reset selection
execute as @e[type=#drakoncore:boats,tag=dc_otherTargetedBoat,limit=1] run function dc_boats:attach/remove_select