execute unless entity @s[tag=dc_bombImpact] run function dc_throwable_bombs:in_air

execute if entity @s[tag=dc_fireBomb] run function dc_throwable_bombs:fire/tick
execute if entity @s[tag=dc_smokeBomb] run function dc_throwable_bombs:smoke/tick
execute if entity @s[tag=dc_blastBomb] run function dc_throwable_bombs:blast/tick
execute if entity @s[tag=dc_potatoBomb] run function dc_throwable_bombs:potato/tick
execute if entity @s[tag=dc_redstoneBomb] run function dc_throwable_bombs:redstone/tick

execute if predicate drakoncore:in_water run function dc_throwable_bombs:extinguish
execute if entity @s[tag=dc_throwableBomb] unless predicate drakoncore:is_single_item run function dc_throwable_bombs:extinguish