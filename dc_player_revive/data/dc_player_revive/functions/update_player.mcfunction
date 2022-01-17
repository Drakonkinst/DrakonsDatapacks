execute store result score @s dc_temp_id run data get entity @s UUID[0]
tag @s add dc_seekingGrave
execute as @e[type=armor_stand,tag=grave] run function dc_player_revive:locate_matching_grave
tag @s remove dc_seekingGrave

execute unless entity @e[type=armor_stand,tag=dc_locatedGrave,limit=1] run tag @s remove dc_hasGrave

# This should really use the new on_player_respawn hook, but update_player has two separate success conditions
# plus I'm lazy so this will stay as is
execute unless predicate drakoncore:is_player_dead run function dc_player_revive:on_player_respawn
execute if entity @s[tag=dc_hasGrave] at @e[type=armor_stand,tag=dc_locatedGrave,limit=1] run function dc_player_revive:update_grave