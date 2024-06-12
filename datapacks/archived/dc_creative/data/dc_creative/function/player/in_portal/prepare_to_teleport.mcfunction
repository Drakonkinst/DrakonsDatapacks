# Remove in_portal tags
function dc_creative:player/in_portal/leave

# Summon player's data marker
execute in overworld run summon marker -30000000 11 1600 {Tags:["dc_player_data","dc_current_marker"]}

# Increment id and link player with the data marker
scoreboard players add #dc_link_id dc_creativeId 1
scoreboard players operation @e[type=marker,tag=dc_current_marker,limit=1] dc_creativeId = #dc_link_id dc_creativeId
scoreboard players operation @s dc_creativeId = #dc_link_id dc_creativeId

# Set player's data to the linked marker
data modify entity @e[type=marker,tag=dc_current_marker,limit=1] data.ActiveEffects set from entity @s ActiveEffects
data modify entity @e[type=marker,tag=dc_current_marker,limit=1] data.Inventory set from entity @s Inventory
execute store result entity @e[type=marker,tag=dc_current_marker,limit=1] data.XpLevels int 1 run xp query @s levels 
execute store result entity @e[type=marker,tag=dc_current_marker,limit=1] data.XpPoints int 1 run xp query @s points 
execute if entity @s[gamemode=survival] run data modify entity @e[type=marker,tag=dc_current_marker,limit=1] data.Gamemode set value "survival"
execute if entity @s[gamemode=creative] run data modify entity @e[type=marker,tag=dc_current_marker,limit=1] data.Gamemode set value "creative"
execute if entity @s[gamemode=adventure] run data modify entity @e[type=marker,tag=dc_current_marker,limit=1] data.Gamemode set value "adventure"
tag @e[type=marker,tag=dc_current_marker] remove dc_current_marker

# Set players last entered portal pos
tag @s add dc_current_player
execute as @e[type=marker,tag=dc_portal,sort=nearest,limit=1] run function dc_creative:player/in_portal/store_entered_point
tag @s remove dc_current_player

# Teleport the player in the creative dimension
execute in dc_creative:creative_world positioned 0 1 0 run function dc_creative:utils/tp_here

# Reset player and prepare it
clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points
gamemode creative @s
tag @s add dc_in_creative_dimension

# Animations
execute at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 1 0.5 0.01 200
execute at @s run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 1000 0.4