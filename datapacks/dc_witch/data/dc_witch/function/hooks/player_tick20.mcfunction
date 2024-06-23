# Runs once per second on each player
execute if entity @s[tag=dc_witch] run function dc_witch:witch_tick20
execute if predicate dc_witch:strobe_night_vision run effect clear @s[tag=!dc_allowStrobe] night_vision