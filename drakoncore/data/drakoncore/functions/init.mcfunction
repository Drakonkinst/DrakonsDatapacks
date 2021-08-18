# Run when loading the datapack

# Base scoreboards
scoreboard objectives add dc_value dummy "Value"
scoreboard objectives add dc_login minecraft.custom:minecraft.leave_game "Login"
scoreboard objectives add dc_temp_id dummy "Temp ID"
scoreboard objectives add dc_xPos dummy "X"
scoreboard objectives add dc_yPos dummy "Y"
scoreboard objectives add dc_zPos dummy "Z"
scoreboard objectives add dc_health health {"text":"❤","color":"red"}
scoreboard objectives add dc_deathCount deathCount "Deaths"
scoreboard objectives add dc_recentDeath deathCount "Recently Died"
scoreboard objectives add dc_playerKills playerKillCount "Player Kills"

# Base commands
scoreboard objectives add help trigger "DrakonCore Help"
scoreboard objectives add mods trigger "DrakonCore Modlist"
scoreboard objectives add config trigger "DrakonCore Config"

function #drakoncore:init

# Begin clock ticking
function drakoncore:tick5
function drakoncore:tick20
function drakoncore:tick100

execute if entity @a[tag=dc_admin,limit=1] as @a[tag=dc_admin] run function drakoncore:finish_init_message
execute unless entity @a[tag=dc_admin,limit=1] as @a run function drakoncore:finish_init_message_no_admin