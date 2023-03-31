execute if entity @s[tag=!dc_eggGiven] if predicate dc_wishing_well:chance_epic run function dc_wishing_well:give_epic
execute if entity @s[tag=!dc_eggGiven] if predicate dc_wishing_well:chance_rare run function dc_wishing_well:give_rare
execute if entity @s[tag=!dc_eggGiven] if predicate dc_wishing_well:chance_uncommon run function dc_wishing_well:give_uncommon
execute if entity @s[tag=!dc_eggGiven] run function dc_wishing_well:give_common
tag @s remove dc_eggGiven
scoreboard players remove @s dc_value 1
execute if score @s dc_value matches 1.. run function dc_wishing_well:summon_drops