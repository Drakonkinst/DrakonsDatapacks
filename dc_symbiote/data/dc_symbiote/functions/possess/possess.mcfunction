tag @s remove dc_symbioteMoving
tag @s add dc_symbiotePossess
scoreboard players reset @s dc_symbiotePossess
execute as @e[type=!#dc_symbiote:invalid_host,tag=dc_symbioteTarget,limit=1,sort=nearest,distance=..1] run function dc_symbiote:host/start

gamemode spectator @s[gamemode=!spectator]
spectate @e[type=!#dc_symbiote:invalid_host,tag=dc_newHost,limit=1]

tag @e[type=!#dc_symbiote:invalid_host,tag=dc_newHost,limit=1] remove dc_newHost