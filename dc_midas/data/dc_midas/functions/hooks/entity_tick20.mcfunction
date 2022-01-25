# Runs once per second on each entity
execute if entity @s[type=item,tag=!dc_notMidas] run function dc_midas:check_item
execute if entity @s[type=#dc_midas:armorable] run function dc_midas:check_mob