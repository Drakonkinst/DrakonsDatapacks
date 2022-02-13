execute unless predicate dc_symbiote:has_fire_resistance run function dc_symbiote:check_fire
execute unless entity @s[tag=dc_symbioteFire] if predicate dc_symbiote:has_wither run effect give @s minecraft:regeneration 1 2 true
execute if predicate dc_symbiote:has_poison run effect give @s minecraft:regeneration 1 2 true
effect clear @s minecraft:hunger
execute unless entity @s[tag=dc_symbioteFire] run effect clear @s minecraft:wither
effect clear @s minecraft:poison
tag @s remove dc_symbioteFire

execute if entity @s[tag=dc_symbiotePossess] run function dc_symbiote:possess/tick5