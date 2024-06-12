tag @s add dc_currentSymbiote
tag @e[type=!#dc_symbiote:invalid_host,limit=1,tag=dc_symbioteHost,tag=!dc_currentSymbiote,sort=nearest,distance=..10] add dc_currentHost
execute if entity @e[type=#dc_symbiote:dolphins_grace,limit=1,tag=dc_currentHost] run effect give @s minecraft:dolphins_grace 30 0
execute if entity @e[type=#dc_symbiote:fire_resistance,limit=1,tag=dc_currentHost] run effect give @s minecraft:fire_resistance 30 0
execute if entity @e[type=#dc_symbiote:glowing,limit=1,tag=dc_currentHost] run effect give @s minecraft:glowing 30 0
execute if entity @e[type=#dc_symbiote:haste,limit=1,tag=dc_currentHost] run effect give @s minecraft:haste 30 2
execute if entity @e[type=#dc_symbiote:invisibility,limit=1,tag=dc_currentHost] run effect give @s minecraft:invisibility 30 0
execute if entity @e[type=#dc_symbiote:jump_boost,limit=1,tag=dc_currentHost] run effect give @s minecraft:jump_boost 30 1
execute if entity @e[type=#dc_symbiote:night_vision,limit=1,tag=dc_currentHost] run effect give @s minecraft:night_vision 30 0
execute if entity @e[type=#dc_symbiote:resistance,limit=1,tag=dc_currentHost] run effect give @s minecraft:resistance 30 1
execute if entity @e[type=#dc_symbiote:slow_falling,limit=1,tag=dc_currentHost] run effect give @s minecraft:slow_falling 30 0
execute if entity @e[type=#dc_symbiote:speed,limit=1,tag=dc_currentHost] run effect give @s minecraft:speed 30 1
execute if entity @e[type=#dc_symbiote:strength,limit=1,tag=dc_currentHost] run effect give @s minecraft:strength 30 1
execute if entity @e[type=#dc_symbiote:water_breathing,limit=1,tag=dc_currentHost] run effect give @s minecraft:water_breathing 30 0
tag @e[type=!#dc_symbiote:invalid_host,limit=1,tag=dc_currentHost] remove dc_currentHost
tag @s remove dc_currentSymbiote