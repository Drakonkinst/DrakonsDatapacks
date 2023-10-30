# Allow transformation
execute unless entity @s[tag=dc_werewolfTransformed] if predicate dc_werewolf:wants_to_transform run function dc_werewolf:attempt_increment_transform
execute if score @s[tag=!dc_werewolfChanging] dc_werewolfChange matches 1.. run scoreboard players reset @s dc_werewolfChange
tag @s remove dc_werewolfChanging

execute if entity @s[tag=dc_werewolfNeedsBones] run function dc_werewolf:check_return_bones

# Transformation logic
execute if entity @s[tag=dc_werewolfTransformed] run function dc_werewolf:wolf_tick5

# Display rage meter
execute unless entity @s[tag=dc_werewolfTransformed] if predicate dc_werewolf:holding_bones unless predicate drakoncore:is_sneaking unless score @s dc_werewolfChange matches ..-1 run function dc_werewolf:meter/display_meter