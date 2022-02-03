# Retrieve player's linked marker
execute as @e[type=marker,tag=dc_player_data] if score @s dc_creativeId = @a[tag=dc_wait_for_effects_back,limit=1] dc_creativeId run tag @s add dc_current_player_data

# Restore effects 
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["dc_current_player_data_effects","dc_to_init"],Age:-1,WaitTime:-1,Radius:0.0f,Duration:1000,DurationOnUse:-1000}
data modify entity @e[type=area_effect_cloud,tag=dc_to_init,limit=1] Effects set from entity @e[type=marker,tag=dc_current_player_data,limit=1] data.ActiveEffects
tag @e[type=area_effect_cloud,tag=dc_to_init] remove dc_to_init

# Remove tags and marker
tag @s remove dc_wait_for_effects_back
kill @e[type=marker,tag=dc_current_player_data]