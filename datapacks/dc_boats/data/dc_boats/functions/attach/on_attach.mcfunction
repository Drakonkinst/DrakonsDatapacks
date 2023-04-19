tag @s add dc_attachAnchor
scoreboard players reset #BoatInvalid dc_value
scoreboard players reset #OtherBoatExists dc_value

# Mark other boat if it exists
execute as @e[type=#drakoncore:boats,tag=dc_selectedBoat] if score @s dc_playerId = @a[tag=dc_attachAnchor,limit=1] dc_playerId run function dc_boats:attach/mark_other_targeted

# Boat is invalid if the same one is selected
execute unless score #BoatInvalid dc_value matches 1 if entity @e[type=#drakoncore:boats,distance=..7,limit=1,tag=dc_targetedBoat,tag=dc_otherTargetedBoat] run scoreboard players set #BoatInvalid dc_value 1

# Boat is invalid if it already has a vehicle
execute unless score #BoatInvalid dc_value matches 1 as @e[type=#drakoncore:boats,distance=..7,limit=1,tag=dc_targetedBoat] on vehicle run function dc_boats:attach/error/already_attached

execute unless score #BoatInvalid dc_value matches 1 unless score #OtherBoatExists dc_value matches 1 as @e[type=#drakoncore:boats,distance=..7,limit=1,tag=dc_targetedBoat] run function dc_boats:attach/select_boat
execute unless score #BoatInvalid dc_value matches 1 if score #OtherBoatExists dc_value matches 1 as @e[type=#drakoncore:boats,distance=..7,limit=1,tag=dc_targetedBoat] run function dc_boats:attach/attempt_connect
tag @s remove dc_attachAnchor

# Reset tags
tag @e[type=#drakoncore:boats,limit=1,tag=dc_targetedBoat,distance=..20] remove dc_targetedBoat
execute if score #OtherBoatExists dc_value matches 1 run tag @e[type=#drakoncore:boats,tag=dc_otherTargetedBoat,limit=1] remove dc_otherTargetedBoat