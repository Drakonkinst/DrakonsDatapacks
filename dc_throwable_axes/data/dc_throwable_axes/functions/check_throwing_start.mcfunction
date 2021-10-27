# axes
#iron
execute if predicate dc_throwable_axes:holding_iron_axe run tag @s add holdingIAxe
execute if score @s[tag=holdingIAxe] dc_throwIAxe matches 1.. run function dc_throwable_axes:throw/iron
execute unless predicate dc_throwable_axes:holding_iron_axe run tag @s remove holdingIAxe

#wooden
execute if predicate dc_throwable_axes:holding_wooden_axe run tag @s add holdingWAxe
execute if score @s[tag=holdingWAxe] dc_throwWAxe matches 1.. run function dc_throwable_axes:throw/wooden
execute unless predicate dc_throwable_axes:holding_wooden_axe run tag @s remove holdingWAxe

#stone
execute if predicate dc_throwable_axes:holding_stone_axe run tag @s add holdingSAxe
execute if score @s[tag=holdingSAxe] dc_throwSAxe matches 1.. run function dc_throwable_axes:throw/stone
execute unless predicate dc_throwable_axes:holding_stone_axe run tag @s remove holdingSAxe

#diamond
execute if predicate dc_throwable_axes:holding_diamond_axe run tag @s add holdingDAxe
execute if score @s[tag=holdingDAxe] dc_throwDAxe matches 1.. run function dc_throwable_axes:throw/diamond
execute unless predicate dc_throwable_axes:holding_diamond_axe run tag @s remove holdingDAxe

#golden
execute if predicate dc_throwable_axes:holding_golden_axe run tag @s add holdingGAxe
execute if score @s[tag=holdingGAxe] dc_throwGAxe matches 1.. run function dc_throwable_axes:throw/golden
execute unless predicate dc_throwable_axes:holding_golden_axe run tag @s remove holdingGAxe

#netherite
execute if predicate dc_throwable_axes:holding_netherite_axe run tag @s add holdingNAxe
execute if score @s[tag=holdingNAxe] dc_throwNTAxe matches 1.. run function dc_throwable_axes:throw/netherite
execute unless predicate dc_throwable_axes:holding_netherite_axe run tag @s remove holdingNAxe