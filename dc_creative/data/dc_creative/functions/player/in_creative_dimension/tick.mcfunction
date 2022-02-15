function dc_creative:utils/clear_items
function dc_creative:utils/clear_blocks

# Check slow falling effect and make the player leave the creation dimension
execute if entity @s[tag=dc_prepare_to_leave_creative_dimension,scores={dc_portalDelay1=0}] run function dc_creative:player/in_creative_dimension/leave/execute_from_player
scoreboard players remove @s[tag=dc_prepare_to_leave_creative_dimension,scores={dc_portalDelay1=1..}] dc_portalDelay1 1

execute store result score @s dc_yPos run data get entity @s Pos[1]
execute if score @s dc_yPos matches ..-64 run function dc_creative:player/in_creative_dimension/no_void_death