# Allow transformation
execute unless entity @s[tag=dc_werewolfTransformed] if predicate dc_werewolf:wants_to_transform run function dc_werewolf:attempt_increment_transform
execute if score @s[tag=!dc_werewolfChanging] dc_werewolfChange matches 1.. run scoreboard players reset @s dc_werewolfChange
tag @s remove dc_werewolfChanging

execute if entity @s[tag=dc_werewolfNeedsBones] unless score @s dc_health matches ..0 run function dc_werewolf:return_bones

# Transformation logic
execute if entity @s[tag=dc_werewolfTransformed] run function dc_werewolf:wolf_tick5
