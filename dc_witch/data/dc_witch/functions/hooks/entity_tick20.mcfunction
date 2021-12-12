# Runs once per second on each entity
execute if entity @s[type=area_effect_cloud,tag=dc_fireflies] run function dc_witch:spell/firefly/buff
execute if entity @s[type=marker,tag=dc_fireflies] run function dc_witch:spell/firefly/check_marker
execute if entity @s[type=husk,tag=dc_outcastFear] unless entity @e[type=villager,distance=..50,limit=1] run function drakoncore:internal/clear_entity