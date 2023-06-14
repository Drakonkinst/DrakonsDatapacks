execute if score #Filter dc_value matches 1.. as @e[tag=dc_entityLook.candidate,tag=dc_entityLook.result] run function drakoncore:internal/entity_look/check_filter
execute if score #Filter dc_value matches 0 run tag @e[tag=dc_entityLook.candidate,tag=dc_entityLook.result] add dc_entityLook.in_filter

execute store success score #success dc_value if predicate drakoncore:internal/entity_look_filter
execute if score #success dc_value matches 0 run tag @e[tag=dc_entityLook.candidate,tag=dc_entityLook.in_filter] remove dc_entityLook.result
execute if score #success dc_value matches 1 run tag @e[tag=dc_entityLook.candidate,tag=!dc_entityLook.in_filter] remove dc_entityLook.result

scoreboard players operation #Filter dc_value *= #2 dc_value
execute if score #Filter dc_value matches 0 run scoreboard players set #Filter dc_value 1

execute if entity @e[tag=dc_entityLook.candidate,tag=dc_entityLook.result,limit=1] if score #Filter dc_value <= #MaxScore dc_value run function drakoncore:internal/entity_look/filter_loop
