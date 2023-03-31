execute unless score @s dc_bloodLevel matches ..0 run function dc_vampire:hunger_lock
tp @e[type=bat,tag=dc_vampire_bat,distance=3.1..6] @s
execute unless entity @s[tag=dc_inBatfly] if predicate drakoncore:is_sneaking if predicate dc_vampire:ghast_tear_mainhand if block ~ ~-0.9 ~ #drakoncore:non_solid run function dc_vampire:batfly/attempt_batfly
execute if entity @s[tag=dc_inBatfly] run function dc_vampire:batfly/in_batfly