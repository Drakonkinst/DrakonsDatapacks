tag @s remove dc_roombaTurnLeft
tag @s remove dc_roombaTurnRight
tag @s remove dc_roombaGoForward

execute store result score #Random dc_value run random value 0..3
execute if score #Random dc_value matches 0 run function dc_roomba:state/go_forward
execute if score #Random dc_value matches 1 run function dc_roomba:state/go_forward
execute if score #Random dc_value matches 2 run function dc_roomba:state/turn_left
execute if score #Random dc_value matches 3 run function dc_roomba:state/turn_right