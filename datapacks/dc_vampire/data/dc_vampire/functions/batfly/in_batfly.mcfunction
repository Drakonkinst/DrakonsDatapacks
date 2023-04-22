# Force player not to spectate anything
spectate

# Perform the search on all entities in case we decided to dismount
scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
execute as @e[type=bat,tag=dc_batfly] if score @s dc_playerId = #CurrentId dc_playerId run tag @s add dc_matchBatfly

# Detect if we should leave batfly
scoreboard players set #MissingBatMount dc_value 1
execute on vehicle if entity @s[type=bat,tag=dc_matchBatfly] run scoreboard players reset #MissingBatMount dc_value

# Teleport back to bat's position, if it still exists
execute if score #MissingBatMount dc_value matches 1 at @e[type=bat,tag=dc_matchBatfly,limit=1] run tp @s ~ ~ ~ ~ ~

# Leave batfly
execute if score #MissingBatMount dc_value matches 1 run function dc_vampire:batfly/leave_batfly

tag @e[type=bat,tag=dc_batfly] remove dc_matchBatfly