# Instantly clear title
#title @s title ""

tag @s remove dc_hb_active
scoreboard players set @s dc_hb_prevStage 0

# Removing this line gives the player an extra second or so to use the strength,
# making it a little easier to use
#effect clear @s strength