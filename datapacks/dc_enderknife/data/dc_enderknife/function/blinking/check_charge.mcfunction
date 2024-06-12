execute if score @s dc_endermanKills matches 1.. run function dc_enderknife:blinking/charge_blade
scoreboard players reset @s dc_endermanKills

execute if predicate dc_enderknife:enderpearl_offhand run function dc_enderknife:blinking/charge_blade
execute if predicate dc_enderknife:enderpearl_offhand run clear @s minecraft:ender_pearl 1