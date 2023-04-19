execute if entity @s[tag=dc_boatSail] run scoreboard players add #NumSails dc_value 1
execute on passengers run function dc_boats:controls/check_modules