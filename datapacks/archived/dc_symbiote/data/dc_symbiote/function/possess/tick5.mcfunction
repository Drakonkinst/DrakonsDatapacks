# Mark current host
tag @s add dc_currentSymbiote
tag @e[type=!#dc_symbiote:invalid_host,limit=1,tag=dc_symbioteHost,tag=!dc_currentSymbiote,sort=nearest] add dc_currentHost

# If host does not exist or is not close enough, exit
execute unless entity @e[type=!#dc_symbiote:invalid_host,limit=1,tag=dc_currentHost,distance=..10] run function dc_symbiote:possess/on_peaceful_exit

# Spectate the host
spectate @e[type=!#dc_symbiote:invalid_host,limit=1,tag=dc_currentHost]

scoreboard players add @s dc_symbiotePossess 1
execute if score @s dc_symbiotePossess matches ..25 run function dc_symbiote:display/meter
execute if score @s dc_symbioteStop matches 1.. run function dc_symbiote:possess/on_exit

# Remove tags
tag @e[type=!#dc_symbiote:invalid_host,limit=1,tag=dc_currentHost] remove dc_currentHost
tag @s remove dc_currentSymbiote