particle minecraft:campfire_signal_smoke ~ ~0.75 ~ 0.3 0.5 0.3 0.01 20
tag @s add dc_targetPotion
function dc_witch:brewing/store_count
tag @s remove dc_brewSuccess

execute as @e[type=item,tag=dc_cauldronItem] if predicate drakoncore:is_single_item run function dc_witch:brewing/check_brewing_item
execute if entity @s[tag=dc_brewSuccess] run function dc_witch:brewing/finish_brew
tag @s remove dc_brewSuccess
tag @s remove dc_targetPotion