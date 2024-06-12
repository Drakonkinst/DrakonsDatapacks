# Runs once per second on each player
execute if entity @s[tag=dc_holdingNb] unless predicate dc_nightblood:holding_nightblood run function dc_nightblood:unequip_nightblood
execute if predicate dc_nightblood:holding_nightblood run function dc_nightblood:nightblood_tick20
execute if entity @s[tag=dc_nbCurse] run function dc_nightblood:curse_tick20