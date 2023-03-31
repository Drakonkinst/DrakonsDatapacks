# Hardcoded dimension check
execute if entity @a[tag=dc_speedrunner,limit=1,nbt={Dimension:"minecraft:overworld"}] if predicate drakoncore:in_overworld run tag @s add dc_dimension_matches
execute if entity @a[tag=dc_speedrunner,limit=1,nbt={Dimension:"minecraft:the_nether"}] if predicate drakoncore:in_nether run tag @s add dc_dimension_matches
execute if entity @a[tag=dc_speedrunner,limit=1,nbt={Dimension:"minecraft:the_end"}] if predicate drakoncore:in_end run tag @s add dc_dimension_matches

# If last slot is empty
execute if entity @s[tag=dc_dimension_matches] unless entity @s[nbt={Inventory:[{Slot:8b}]}] run function dc_manhunt_compass:update_compass

# If last slot is already a compass
execute if entity @s[tag=dc_dimension_matches,nbt={Inventory:[{Slot:8b,id:"minecraft:compass",tag:{dc_manhunt_compass:1b}}]}] run function dc_manhunt_compass:update_compass

tag @s remove dc_dimension_matches