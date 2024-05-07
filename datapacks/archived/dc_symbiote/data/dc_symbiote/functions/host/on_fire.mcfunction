tag @s add dc_currentHost
execute as @p[tag=dc_symbiote,tag=dc_symbiotePossess] run function dc_symbiote:possess/fire_exit
tag @s remove dc_currentHost