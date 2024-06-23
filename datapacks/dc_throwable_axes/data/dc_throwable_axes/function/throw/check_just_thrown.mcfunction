tag @s add dc_axeThrower

# Wooden
execute if score @s dc_throwWAxe matches 1.. as @n[type=item,predicate=dc_throwable_axes:new_wooden_axe,distance=..5] at @s run function dc_throwable_axes:throw/check_thrown_axe

# Stone
execute if score @s dc_throwSAxe matches 1.. as @n[type=item,predicate=dc_throwable_axes:new_stone_axe,distance=..5] at @s run function dc_throwable_axes:throw/check_thrown_axe

# Iron
execute if score @s dc_throwIAxe matches 1.. as @n[type=item,predicate=dc_throwable_axes:new_iron_axe,distance=..5] at @s run function dc_throwable_axes:throw/check_thrown_axe

# Golden
execute if score @s dc_throwGAxe matches 1.. as @n[type=item,predicate=dc_throwable_axes:new_golden_axe,distance=..5] at @s run function dc_throwable_axes:throw/check_thrown_axe

# Diamond
execute if score @s dc_throwDAxe matches 1.. as @n[type=item,predicate=dc_throwable_axes:new_diamond_axe,distance=..5] at @s run function dc_throwable_axes:throw/check_thrown_axe

# Netherite
execute if score @s dc_throwNAxe matches 1.. as @n[type=item,predicate=dc_throwable_axes:new_netherite_axe,distance=..5] at @s run function dc_throwable_axes:throw/check_thrown_axe

tag @s remove dc_axeThrower