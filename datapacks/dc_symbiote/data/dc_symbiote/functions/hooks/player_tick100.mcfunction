# Runs once every 5 seconds on each player
execute if entity @s[tag=dc_symbiote] run function dc_symbiote:symbiote_tick100
execute if entity @s[tag=!dc_symbiote,tag=dc_symbioteMaxHp] run function dc_symbiote:reset_max_health