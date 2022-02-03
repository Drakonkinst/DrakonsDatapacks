function dc_creative:utils/clear_items
function dc_creative:utils/clear_blocks

# Force gamemode (in case of deconnection on server that has a forced gamemode on reconnection)
gamemode creative @s[gamemode=!creative,tag=!dc_admin]

# Check slow falling effect and make the player leave the creation dimension
execute if entity @s[tag=!dc_prepare_to_leave_creative_dimension,predicate=dc_creative:effect/slow_falling] run function dc_creative:player/in_creative_dimension/leave/initialize
execute if entity @s[tag=dc_prepare_to_leave_creative_dimension,scores={dc_portalDelay1=0}] run function dc_creative:player/in_creative_dimension/leave/execute_from_player
scoreboard players remove @s[tag=dc_prepare_to_leave_creative_dimension,scores={dc_portalDelay1=1..}] dc_portalDelay1 1