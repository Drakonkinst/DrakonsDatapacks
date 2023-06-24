# Sets #Random to a value in the range [0, #RandomMax) (exclusive)
# where #RandomMax is a positive integer
scoreboard players set #RandomMax dc_value 4
function drakoncore:api/random_max

tag @s remove dc_roombaTurnLeft
tag @s remove dc_roombaTurnRight
tag @s remove dc_roombaGoForward
tag @s remove dc_roombaLevitate
execute if score #Random dc_value matches 0 run function dc_roomba:state/go_forward
execute if score #Random dc_value matches 1 run function dc_roomba:state/go_forward
execute if score #Random dc_value matches 2 run function dc_roomba:state/turn_left
execute if score #Random dc_value matches 3 run function dc_roomba:state/turn_right
#execute if block ~ ~-0.1 ~ slime_block run function dc_roomba:state/levitate