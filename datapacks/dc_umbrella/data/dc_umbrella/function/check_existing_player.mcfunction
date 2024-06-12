scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
scoreboard players reset #PlayerFound dc_value
execute as @a[distance=..20,gamemode=!spectator] if score @s dc_playerId = #CurrentId dc_playerId run scoreboard players set #PlayerFound dc_value 1
execute unless score #PlayerFound dc_value matches 1.. run kill @s