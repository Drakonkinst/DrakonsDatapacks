# Scores
scoreboard objectives add dc_portalDelay1 dummy
scoreboard objectives add dc_portalDelay2 dummy
scoreboard objectives add dc_creativeId dummy

# Used to save player's last dream world entered portal
scoreboard objectives add dc_lastPortalX dummy
scoreboard objectives add dc_lastPortalY dummy
scoreboard objectives add dc_lastPortalZ dummy
scoreboard objectives add dc_lastPortalDim dummy

# Parameters 
# Initialize players and marker link ID
scoreboard players add #dc_link_id dc_creativeId 0

# Forceloaded chunk (following Phi datapack standards)
forceload add -30000000 1600