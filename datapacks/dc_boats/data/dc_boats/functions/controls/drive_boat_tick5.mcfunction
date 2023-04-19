execute store result score #Rotation dc_value run data get entity @s Rotation[1] 100
execute if score #Rotation dc_value matches 9000 on vehicle if entity @s[tag=dc_activeBoat] run function dc_boats:controls/deactivate_boat
execute if score #Rotation dc_value matches -9000 on vehicle if entity @s[tag=!dc_activeBoat] run function dc_boats:controls/activate_boat

#execute if score #Rotation dc_value matches -9000 on vehicle if entity @s[tag=dc_flyingBoat] run data modify entity @s Motion[1] set value 1.0d
#execute if score #Rotation dc_value matches 9000 on vehicle if entity @s[tag=dc_flyingBoat] run data modify entity @s Motion[1] set value -1.0d