tag @s add dc_swordThrower

# Wooden
execute if score @s dc_throwWSword matches 1.. as @n[type=item,predicate=dc_enderknife:new_wooden_sword,distance=..5] at @s run function dc_enderknife:throw/check_thrown_sword

# Stone
execute if score @s dc_throwSSword matches 1.. as @e[type=item,predicate=dc_enderknife:new_stone_sword,distance=..5] at @s run function dc_enderknife:throw/check_thrown_sword

# Iron
execute if score @s dc_throwISword matches 1.. as @e[type=item,predicate=dc_enderknife:new_iron_sword,distance=..5] at @s run function dc_enderknife:throw/check_thrown_sword

# Golden
execute if score @s dc_throwGSword matches 1.. as @e[type=item,predicate=dc_enderknife:new_golden_sword,distance=..5] at @s run function dc_enderknife:throw/check_thrown_sword

# Diamond
execute if score @s dc_throwDSword matches 1.. as @e[type=item,predicate=dc_enderknife:new_diamond_sword,distance=..5] at @s run function dc_enderknife:throw/check_thrown_sword

# Netherite
execute if score @s dc_throwNSword matches 1.. as @e[type=item,predicate=dc_enderknife:new_netherite_sword,distance=..5] at @s run function dc_enderknife:throw/check_thrown_sword

tag @s remove dc_swordThrower