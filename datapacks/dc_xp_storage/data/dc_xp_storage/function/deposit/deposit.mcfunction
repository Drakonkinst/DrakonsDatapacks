execute store result score @s dc_value run xp query @s points
execute if predicate drakoncore:is_sneaking unless entity @s[level=0,scores={dc_value=0}] run function dc_xp_storage:deposit/deposit_all
execute unless predicate drakoncore:is_sneaking unless entity @s[level=0,scores={dc_value=0}] run function dc_xp_storage:deposit/deposit_level