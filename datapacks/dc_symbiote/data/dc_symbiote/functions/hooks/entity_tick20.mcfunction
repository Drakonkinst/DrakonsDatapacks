# Runs once per second on each entity
execute if entity @s[type=!#dc_symbiote:invalid_host,tag=dc_symbioteHost] run function dc_symbiote:host/tick20