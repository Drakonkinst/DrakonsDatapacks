execute if predicate dc_werewolf:has_weakness run function dc_werewolf:fail_transform
execute unless predicate dc_werewolf:has_weakness run function dc_werewolf:transform_wolf

# Add extra delay to trying again
scoreboard players set @s dc_werewolfChange -5