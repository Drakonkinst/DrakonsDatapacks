execute as @e[type=area_effect_cloud,tag=dc_fireflies] at @s run function dc_witch:spell/firefly/buff
execute as @e[type=marker,tag=dc_fireflies] at @s run function dc_witch:spell/firefly/check_marker
execute as @e[type=husk,tag=dc_outcastFear] at @s unless entity @e[type=villager,distance=..50,limit=1] run function drakoncore:api/clear_entity