scoreboard players set #MAX_B dc_value -1

execute if predicate dc_midas:holding/exactly/golden_helmet run scoreboard players operation #MAX_B dc_value = #GOLDEN_HELMET dc_value
execute if predicate dc_midas:holding/exactly/golden_chestplate run scoreboard players operation #MAX_B dc_value = #GOLDEN_CHESTPLATE dc_value
execute if predicate dc_midas:holding/exactly/golden_leggings run scoreboard players operation #MAX_B dc_value = #GOLDEN_LEGGINGS dc_value
execute if predicate dc_midas:holding/exactly/golden_boots run scoreboard players operation #MAX_B dc_value = #GOLDEN_BOOTS dc_value
execute if predicate dc_midas:holding/exactly/golden_tool run scoreboard players operation #MAX_B dc_value = #GOLDEN_TOOL dc_value