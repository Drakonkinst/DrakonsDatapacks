tag @s add dc_roombaTurnLeft
#say TURN LEFT
scoreboard players set #RandomMin dc_value 2
scoreboard players set #RandomMax dc_value 3
function drakoncore:api/random_min_max
scoreboard players operation @s dc_roombaTimer = #Random dc_value