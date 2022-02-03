# Store entered point location 
execute store result score @a[tag=dc_current_player,limit=1] dc_lastPortalX run data get entity @s Pos[0]
execute store result score @a[tag=dc_current_player,limit=1] dc_lastPortalY run data get entity @s Pos[1]
execute store result score @a[tag=dc_current_player,limit=1] dc_lastPortalZ run data get entity @s Pos[2]
execute as @a[tag=dc_current_player,limit=1] run function dc_creative:player/in_portal/store_dimension_data

# Set offset depending on portal direction
execute if entity @s[tag=dc_portal_facing_east] run scoreboard players remove @a[tag=dc_current_player,limit=1] dc_lastPortalX 2
execute if entity @s[tag=dc_portal_facing_north] run scoreboard players remove @a[tag=dc_current_player,limit=1] dc_lastPortalZ 2