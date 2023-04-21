execute store result score #OldX dc_value run data get entity @s Pos[0] 100
execute store result score #OldZ dc_value run data get entity @s Pos[2] 100

scoreboard players operation #TpTicks dc_value = @s dc_numSails
function dc_boats:controls/tp_forward

execute store result score #X dc_value run data get entity @s Pos[0] 100
execute store result score #Z dc_value run data get entity @s Pos[2] 100

scoreboard players operation #TpTicks dc_value = @s dc_numSails
function dc_boats:controls/tp_backward

scoreboard players operation #X dc_value -= #OldX dc_value
scoreboard players operation #Z dc_value -= #OldZ dc_value

execute store result entity @s Motion[0] double 0.01 run scoreboard players get #X dc_value
execute store result entity @s Motion[2] double 0.01 run scoreboard players get #Z dc_value