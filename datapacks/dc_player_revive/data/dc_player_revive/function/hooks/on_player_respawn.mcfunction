scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
execute if entity @s[tag=dc_revived] run function dc_player_revive:attempt_revive_player
execute as @e[type=armor_stand,tag=dc_grave] if score @s dc_playerId = #CurrentId dc_playerId run kill @s

tag @s remove dc_reviving
tag @s remove dc_hasGrave
tag @s remove dc_revived