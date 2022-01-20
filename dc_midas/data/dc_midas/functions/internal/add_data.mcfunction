execute if data entity @s HandItems[0].tag.Damage run function dc_midas:durability/set_a

# Convert item
execute if predicate dc_midas:holding/valid_helmet run data modify entity @s HandItems[0].id set value "minecraft:golden_helmet"
execute if predicate dc_midas:holding/valid_chestplate run data modify entity @s HandItems[0].id set value "minecraft:golden_chestplate"
execute if predicate dc_midas:holding/valid_leggings run data modify entity @s HandItems[0].id set value "minecraft:golden_leggings"
execute if predicate dc_midas:holding/valid_boots run data modify entity @s HandItems[0].id set value "minecraft:golden_boots"
execute if predicate dc_midas:holding/valid_stone_ore run data modify entity @s HandItems[0].id set value "minecraft:gold_ore"
execute if predicate dc_midas:holding/valid_deepslate_ore run data modify entity @s HandItems[0].id set value "minecraft:deepslate_gold_ore"
execute if predicate dc_midas:holding/valid_ingot run data modify entity @s HandItems[0].id set value "minecraft:gold_ingot"
execute if predicate dc_midas:holding/valid_metal_block run data modify entity @s HandItems[0].id set value "minecraft:gold_block"
execute if predicate dc_midas:holding/valid_nugget run data modify entity @s HandItems[0].id set value "minecraft:gold_nugget"
execute if predicate dc_midas:holding/valid_raw_ore run data modify entity @s HandItems[0].id set value "minecraft:raw_gold"
execute if predicate dc_midas:holding/valid_raw_ore_block run data modify entity @s HandItems[0].id set value "minecraft:raw_gold_block"
execute if predicate dc_midas:holding/valid_apple run data modify entity @s HandItems[0].id set value "minecraft:golden_apple"
execute if predicate dc_midas:holding/valid_carrot run data modify entity @s HandItems[0].id set value "minecraft:golden_carrot"
execute if predicate dc_midas:holding/valid_melon_slice run data modify entity @s HandItems[0].id set value "minecraft:glistering_melon_slice"
execute if predicate dc_midas:holding/valid_horse_armor run data modify entity @s HandItems[0].id set value "minecraft:golden_horse_armor"
execute if predicate dc_midas:holding/valid_pickaxe run data modify entity @s HandItems[0].id set value "minecraft:golden_pickaxe"
execute if predicate dc_midas:holding/valid_shovel run data modify entity @s HandItems[0].id set value "minecraft:golden_shovel"
execute if predicate dc_midas:holding/valid_axe run data modify entity @s HandItems[0].id set value "minecraft:golden_axe"
execute if predicate dc_midas:holding/valid_hoe run data modify entity @s HandItems[0].id set value "minecraft:golden_hoe"
execute if predicate dc_midas:holding/valid_sword run data modify entity @s HandItems[0].id set value "minecraft:golden_sword"

data modify entity @s HandItems[0].tag.MidasTouch set value 1b
tag @e[tag=dc_midasAnchor,limit=1] add dc_midasTouched

execute if data entity @s HandItems[0].tag.Damage run function dc_midas:durability/set_gold_b
execute if data entity @s HandItems[0].tag.Damage if score #MAX_A dc_value matches 1.. if score #MAX_B dc_value matches 1.. run function dc_midas:durability/modify_damage

# Old damage implementation
#execute if data entity @s HandItems[0].tag.Damage run data modify entity @s HandItems[0].tag.MidasOldDamage set from entity @s HandItems[0].tag.Damage
#execute if data entity @s HandItems[0].tag.Damage run data modify entity @s HandItems[0].tag.Damage set value 0