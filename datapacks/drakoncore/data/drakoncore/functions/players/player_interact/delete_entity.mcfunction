scoreboard players operation #PlayerId dc_value = @s dc_playerId
execute as @e[type=interaction,tag=dc_player_interact] if score @s dc_playerId = #PlayerId dc_value run kill @s
tag @s remove dc_awaitingPlayerInteract