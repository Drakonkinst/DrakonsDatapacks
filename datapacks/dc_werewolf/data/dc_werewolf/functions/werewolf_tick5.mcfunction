# Allow transformation
execute unless entity @s[tag=dc_werewolfTransformed] if predicate dc_werewolf:wants_to_transform run function dc_werewolf:increment_transform
execute if score @s[tag=!dc_werewolfChanging] dc_werewolfChange matches 1.. run scoreboard players reset @s dc_werewolfChange
tag @s remove dc_werewolfChanging

# Force transform if high enough rage!
execute unless entity @s[tag=dc_werewolfTransformed] if score @s dc_werewolfRage matches 48.. unless predicate dc_werewolf:has_weakness run function dc_werewolf:transform_wolf

execute unless entity @s[tag=dc_werewolfTransformed] run function dc_werewolf:untransformed_tick5

# Transformation logic
tag @s remove dc_werewolfSit
execute if entity @s[tag=dc_werewolfTransformed] run function dc_werewolf:wolf_tick5