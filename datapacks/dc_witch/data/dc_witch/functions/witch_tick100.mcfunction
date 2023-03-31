execute as @e[type=item,tag=dc_cauldronPotion,limit=1,distance=..5] at @s if block ~ ~ ~ water_cauldron run function dc_witch:brewing/do_brew
execute as @e[type=item,tag=dc_cauldronItem,limit=1,distance=..5] if predicate dc_witch:is_book at @s if block ~ ~ ~ water_cauldron run function dc_witch:brewing/create_book
execute unless entity @s[level=1..] run function dc_witch:witch_debuff

# Village Outcast
execute if entity @e[type=villager,limit=1,distance=..50] run function dc_witch:outcast/apply_outcast