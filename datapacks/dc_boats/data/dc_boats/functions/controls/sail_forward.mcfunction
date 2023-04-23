execute store result score #OldX dc_value run data get entity @s Pos[0] 100
execute store result score #OldZ dc_value run data get entity @s Pos[2] 100

tp ^ ^ ^0.3
execute store result score #X dc_value run data get entity @s Pos[0] 100
execute store result score #Z dc_value run data get entity @s Pos[2] 100
tp ^ ^ ^-0.3

scoreboard players operation #X dc_value -= #OldX dc_value
scoreboard players operation #Z dc_value -= #OldZ dc_value

execute if score @s dc_numSails matches 2.. run scoreboard players operation #X dc_value *= @s dc_numSails
execute if score @s dc_numSails matches 2.. run scoreboard players operation #Z dc_value *= @s dc_numSails

execute store result entity @s Motion[0] double 0.01 run scoreboard players get #X dc_value
execute store result entity @s Motion[2] double 0.01 run scoreboard players get #Z dc_value