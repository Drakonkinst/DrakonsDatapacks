# Note: This will cause tag leakage for dc_entityLook.result and dc_entityLook.in_filter
# This is not a major issue, as these tags should not be used anywhere else
# and help this code to be more optimal

#declare score_holder #MaxScore The highest entity score
scoreboard players set #MaxScore dc_value 0
#declare tag dc_entityLook.candidate
#declare tag dc_entityLook.result
tag @e remove dc_entityLook.result
tag @e[tag=dc_entityLook.candidate] add dc_entityLook.result
# Assign unique score to each entity
execute as @e[tag=dc_entityLook.result] store result score @s dc_value run scoreboard players add #MaxScore dc_value 1

#declare score_holder #Filter The rule by which to filter entities
scoreboard players set #Filter dc_value 0

#declare tag dc_entityLook.in_filter
tag @e remove dc_entityLook.in_filter
function drakoncore:internal/entity_look/filter_loop