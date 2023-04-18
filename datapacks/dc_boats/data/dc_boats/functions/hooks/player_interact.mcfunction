say INTERACT WITH BOAT
#scoreboard players operation #CurrentPlayer dc_playerId = @s dc_playerId
#execute as @e[type=interaction,tag=dc_player_interact] if score @s dc_playerId = #CurrentPlayer dc_playerId run kill @s
#execute on target run say @s