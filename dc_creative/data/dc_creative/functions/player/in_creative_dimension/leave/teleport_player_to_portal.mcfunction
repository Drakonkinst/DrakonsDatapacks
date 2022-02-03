# Teleport player to marker
tp @a[tag=dc_player_leave_dimension,limit=1] @s

# Teleport the player to the portal
execute as @a[tag=dc_player_leave_dimension,limit=1] if score @s dc_lastPortalDim matches 0 at @s in minecraft:overworld positioned as @s run tp @s ~ ~ ~
execute as @a[tag=dc_player_leave_dimension,limit=1] if score @s dc_lastPortalDim matches -1 at @s in minecraft:the_nether positioned as @s run tp @s ~ ~ ~
execute as @a[tag=dc_player_leave_dimension,limit=1] if score @s dc_lastPortalDim matches 1 at @s in minecraft:the_end positioned as @s run tp @s ~ ~ ~
# Clear tag and add a tag for waiting animation
tag @a[tag=dc_player_leave_dimension,limit=1] add dc_wait_returning_animation
# Apply animation after teleporation (need to wait for 1 tick)
schedule function dc_creative:player/in_creative_dimension/leave/schedule_gateway_returning_animation 1t