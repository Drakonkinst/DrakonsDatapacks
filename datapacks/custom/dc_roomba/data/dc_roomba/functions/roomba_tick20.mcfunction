execute if score @s dc_roombaTimer matches 1.. run scoreboard players remove @s dc_roombaTimer 1
execute unless score @s dc_roombaTimer matches 1.. run function dc_roomba:next_state