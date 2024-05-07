execute if predicate dc_midas:chance_midas_strike if predicate dc_midas:wearing/valid_helmet run function dc_midas:goldify/helmet
execute if predicate dc_midas:chance_midas_strike if predicate dc_midas:wearing/valid_chestplate run function dc_midas:goldify/chestplate
execute if predicate dc_midas:chance_midas_strike if predicate dc_midas:wearing/valid_leggings run function dc_midas:goldify/leggings
execute if predicate dc_midas:chance_midas_strike if predicate dc_midas:wearing/valid_boots run function dc_midas:goldify/boots
execute if entity @s[tag=dc_midasTouched] run function dc_midas:midas_touch_effect