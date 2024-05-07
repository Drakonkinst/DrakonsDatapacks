tag @s remove dc_symbioteMoving
tag @s add dc_symbiotePossess
scoreboard players reset @s dc_symbiotePossess
execute as @e[type=!#dc_symbiote:invalid_host,tag=dc_symbioteTarget,limit=1,sort=nearest,distance=..1] run function dc_symbiote:host/start

gamemode spectator @s[gamemode=!spectator]
spectate @e[type=!#dc_symbiote:invalid_host,tag=dc_newHost,limit=1]

tag @e[type=!#dc_symbiote:invalid_host,tag=dc_newHost,limit=1] remove dc_newHost

# Enable stop button
scoreboard players enable @s dc_symbioteStop
tellraw @s {"text":"Click HERE to exit your host","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger dc_symbioteStop"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to stop inhabiting your host!","color":"red"}]}}