# Runs once every second globally
execute as @e[type=item] at @s if block ~ ~-0.2 ~ #minecraft:anvil if entity @a[distance=..5,limit=1] if predicate dc_enderknife:enchant/is_sword_item run function dc_enderknife:enchant/check_sword_enchant_item
execute as @e[type=item_display,tag=dc_te_model] at @s if block ~ ~-0.2 ~ #minecraft:anvil if entity @a[distance=..5,limit=1] if predicate dc_enderknife:enchant/is_sword_model run function dc_enderknife:enchant/check_sword_enchant_model