# Remove the player tag
tag @s remove dc_in_creative_dimension

# Retrieve player's linked marker
tag @s add dc_current_player
execute as @e[type=marker,tag=dc_player_data] if score @s dc_creativeId = @a[tag=dc_current_player,limit=1] dc_creativeId run tag @s add dc_current_player_data

# Restore gamemode
execute if entity @e[type=marker,tag=dc_current_player_data,nbt={data:{Gamemode:"survival"}}] run gamemode survival @s
execute if entity @e[type=marker,tag=dc_current_player_data,nbt={data:{Gamemode:"creative"}}] run gamemode creative @s
execute if entity @e[type=marker,tag=dc_current_player_data,nbt={data:{Gamemode:"adventure"}}] run gamemode adventure @s

# Restore experience
experience set @s 0 levels
experience set @s 0 points
function dc_creative:player/restore/restore_xp_levels
function dc_creative:player/restore/restore_xp_points

# Restore inventory
function dc_creative:player/restore/restore_player_inventory

# Restore effects (wait for 1 tick)
effect clear @s
tag @s add dc_wait_for_effects_back

# Remove current entities tags
tag @e[type=marker,tag=dc_current_player_data] remove dc_current_player_data
tag @s remove dc_current_player