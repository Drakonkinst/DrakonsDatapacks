execute if entity @s[tag=type_fire] run function dc_throwable_potato:fire/tick
execute if entity @s[tag=type_smoke] run function dc_throwable_potato:smoke/tick
execute if entity @s[tag=type_blast] run function dc_throwable_potato:blast/tick
execute if entity @s[tag=type_potato] run function dc_throwable_potato:potato/tick
execute if entity @s[tag=type_redstone] run function dc_throwable_potato:redstone/tick

execute unless entity @s[tag=on_ground] run function dc_throwable_potato:in_air
execute unless entity @s[nbt={Item:{Count:1b}}] run function dc_throwable_potato:extinguish
execute if predicate drakoncore:in_water run function dc_throwable_potato:extinguish