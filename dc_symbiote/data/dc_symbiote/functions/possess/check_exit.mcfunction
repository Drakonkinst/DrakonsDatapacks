tag @s add dc_currentSymbiote
tag @e[type=!#dc_symbiote:invalid_host,limit=1,tag=dc_symbioteHost,tag=!dc_currentSymbiote,sort=nearest] add dc_currentHost
execute unless entity @e[type=!#dc_symbiote:invalid_host,limit=1,tag=dc_symbioteHost,distance=..1] run function dc_symbiote:possess/on_exit
tag @e[type=!#dc_symbiote:invalid_host,limit=1,tag=dc_currentHost] remove dc_currentHost
tag @s remove dc_currentSymbiote