scoreboard players reset #OwnerId dc_playerId
execute on owner run scoreboard players operation #OwnerId dc_playerId = @s dc_playerId
execute if score #OwnerId dc_playerId = #CurrentId dc_playerId run effect give @s minecraft:glowing 6 0 true