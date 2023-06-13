tag @s add dc_swordThrower

# Wooden
execute if score @s dc_throwWSword matches 1.. as @e[type=item,predicate=dc_throwable_swords:new_wooden_sword,limit=1,distance=..5,sort=nearest] at @s run function dc_throwable_swords:throw/check_thrown_sword

# Stone
execute if score @s dc_throwSSword matches 1.. as @e[type=item,predicate=dc_throwable_swords:new_stone_sword,limit=1,distance=..5,sort=nearest] at @s run function dc_throwable_swords:throw/check_thrown_sword

# Iron
execute if score @s dc_throwISword matches 1.. as @e[type=item,predicate=dc_throwable_swords:new_iron_sword,limit=1,distance=..5,sort=nearest] at @s run function dc_throwable_swords:throw/check_thrown_sword

# Golden
execute if score @s dc_throwGSword matches 1.. as @e[type=item,predicate=dc_throwable_swords:new_golden_sword,limit=1,distance=..5,sort=nearest] at @s run function dc_throwable_swords:throw/check_thrown_sword

# Diamond
execute if score @s dc_throwDSword matches 1.. as @e[type=item,predicate=dc_throwable_swords:new_diamond_sword,limit=1,distance=..5,sort=nearest] at @s run function dc_throwable_swords:throw/check_thrown_sword

# Netherite
execute if score @s dc_throwNSword matches 1.. as @e[type=item,predicate=dc_throwable_swords:new_netherite_sword,limit=1,distance=..5,sort=nearest] at @s run function dc_throwable_swords:throw/check_thrown_sword

tag @s remove dc_swordThrower