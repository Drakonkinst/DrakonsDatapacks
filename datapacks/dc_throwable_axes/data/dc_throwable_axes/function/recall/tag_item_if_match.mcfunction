scoreboard players reset #ThrowerId dc_playerId
execute on origin run scoreboard players operation #ThrowerId dc_playerId = @s dc_playerId
execute if score #ThrowerId dc_playerId = #CurrentId dc_playerId run scoreboard players set #MatchingAxeFound dc_value 1
execute if score #ThrowerId dc_playerId = #CurrentId dc_playerId run tag @s add dc_matchingAxe