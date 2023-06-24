tag @s add dc_roombaGoForward
#say GO FORWARD
scoreboard players set #RandomMin dc_value 2
scoreboard players set #RandomMax dc_value 8
function drakoncore:api/random_min_max
scoreboard players operation @s dc_roombaTimer = #Random dc_value