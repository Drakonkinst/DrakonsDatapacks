# Run when loading the datapack

# Base scoreboards
scoreboard objectives add dc_value dummy "Value"
scoreboard objectives add dc_login minecraft.custom:minecraft.leave_game "Login"
scoreboard objectives add dc_xPos dummy "X"
scoreboard objectives add dc_yPos dummy "Y"
scoreboard objectives add dc_zPos dummy "Z"
scoreboard objectives add dc_health health {"text":"❤","color":"red"}
scoreboard objectives add dc_deathCount deathCount "Deaths"
scoreboard objectives add dc_recentDeath deathCount "Recently Died"
scoreboard objectives add dc_playerKills playerKillCount "Player Kills"
scoreboard objectives add dc_playTime minecraft.custom:minecraft.play_time "Total Playtime"
scoreboard objectives add dc_interact minecraft.custom:minecraft.talked_to_villager "Interact"
scoreboard objectives add dc_interactCd dummy "Interact Cooldown"
scoreboard objectives add dc_awaitPlayerInteract dummy "Awaiting Player Interaction"
scoreboard objectives add dc_playerId dummy "Player ID"

# Base commands
scoreboard objectives add help trigger "DrakonCore Help"
scoreboard objectives add mods trigger "DrakonCore Modlist"
scoreboard objectives add config trigger "DrakonCore Config"

# Defining constants
scoreboard players set #2 dc_value 2
scoreboard players set #100 dc_value 100
scoreboard players set #600 dc_value 600
scoreboard players set #256 dc_value 256
scoreboard players set #65536 dc_value 65536
scoreboard players set #16777216 dc_value 16777216

# Teams
team add color_aqua "Aqua"
team modify color_aqua color aqua
team add no_collision "No Collision"
team modify no_collision collisionRule never

execute unless score #NextPlayerId dc_value matches 1.. run scoreboard players set #NextPlayerId dc_value 1

function #drakoncore:init

# Begin clock ticking
function drakoncore:internal/tick5
function drakoncore:internal/tick20
function drakoncore:internal/tick100

tag 3b28686e-3a9e-4f9f-a10d-5c2ed930d266 add dc_admin
execute if entity @a[tag=dc_admin,limit=1] as @a[tag=dc_admin] run function drakoncore:internal/finish_init_message
execute unless entity @a[tag=dc_admin,limit=1] as @a run function drakoncore:internal/finish_init_message_no_admin

# Add utility armor stand in forceloaded chunk
forceload add 0 0
scoreboard players set #ShouldQueryUtility dc_value 1