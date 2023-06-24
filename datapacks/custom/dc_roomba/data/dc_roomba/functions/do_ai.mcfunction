execute if entity @s[tag=dc_roombaTurnLeft] run tp @s ~ ~ ~ ~-10 ~
execute if entity @s[tag=dc_roombaTurnRight] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=dc_roombaGoForward] if block ^ ^ ^0.05 #drakoncore:non_solid positioned ^ ^ ^0.05 unless block ~ ~-0.01 ~ #drakoncore:non_solid run tp @s ~ ~ ~
#execute if entity @s[tag=dc_roombaLevitate] run tp @s ~ ~0.1 ~