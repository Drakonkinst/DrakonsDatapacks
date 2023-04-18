scoreboard players operation #CurrentPlayer dc_playerId = @s dc_playerId
scoreboard players set #FoundInteraction dc_value 0
execute as @e[type=interaction,tag=dc_player_interact] if score @s dc_playerId = #CurrentPlayer dc_playerId run function drakoncore:players/player_interact/update_entity
execute if score #FoundInteraction dc_value matches 0 positioned ~ ~1.25 ~ summon interaction run function drakoncore:players/player_interact/setup_entity
tag @s add dc_awaitingPlayerInteract