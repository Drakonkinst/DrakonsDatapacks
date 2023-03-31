# Place marker to portal point coordinates
execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=dc_player_leave_dimension,limit=1] dc_lastPortalX
execute store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=dc_player_leave_dimension,limit=1] dc_lastPortalY
execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=dc_player_leave_dimension,limit=1] dc_lastPortalZ
# Teleport the player
function dc_creative:player/in_creative_dimension/leave/teleport_player_to_portal
# Remove the marker
kill @s