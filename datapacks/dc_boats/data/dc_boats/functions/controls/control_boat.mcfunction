scoreboard players reset #NumSails dc_value
scoreboard players reset #BoatActive dc_value

execute on vehicle if entity @s[tag=dc_activeBoat] run scoreboard players set #BoatActive dc_value 1
execute on vehicle run function dc_boats:controls/check_modules

execute store result score #Rotation dc_value run data get entity @s Rotation[1] 100
execute if score #Rotation dc_value matches 9000 on vehicle if entity @s[tag=dc_activeBoat] run function dc_boats:controls/deactivate_boat
execute if score #Rotation dc_value matches -9000 on vehicle if entity @s[tag=!dc_activeBoat] run function dc_boats:controls/activate_boat




execute if score #NumSails dc_value matches 1.. on vehicle if entity @s[tag=dc_activeBoat] at @s run function dc_boats:controls/sail_forward