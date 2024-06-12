scoreboard players reset #HoldingFood dc_value
execute store result score #Rotation dc_value run data get entity @s Rotation[1] 100
execute if predicate dc_sniffer_riding:holding_sniffer_food run scoreboard players set #HoldingFood dc_value 1
execute store result score #Y dc_value run data get entity @s Pos[1]

tag @s add dc_snifferDriver
execute if score #Y dc_value matches ..320 on vehicle at @s run function dc_sniffer_riding:move/move
tag @s remove dc_snifferDriver