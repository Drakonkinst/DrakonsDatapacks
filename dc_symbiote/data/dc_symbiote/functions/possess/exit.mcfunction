tp @e[type=!#dc_symbiote:invalid_host,limit=1,tag=dc_currentHost,distance=4..]
scoreboard players reset @s dc_symbiotePossess

# Reset gamemode
gamemode survival @s[tag=dc_possess0]
gamemode creative @s[tag=dc_possess1]
gamemode adventure @s[tag=dc_possess2]
tag @s remove dc_possess0
tag @s remove dc_possess1
tag @s remove dc_possess2

# Unstuck
execute align xyz run tp @s ~0.5 ~ ~0.5
function drakoncore:utils/unstuck

execute as @e[type=!#dc_symbiote:invalid_host,limit=1,tag=dc_currentHost,sort=nearest] run function dc_symbiote:host/stop
tag @s remove dc_symbiotePossess

# Effects
particle minecraft:block minecraft:end_portal ~ ~1 ~ 0 0.5 0 0 25