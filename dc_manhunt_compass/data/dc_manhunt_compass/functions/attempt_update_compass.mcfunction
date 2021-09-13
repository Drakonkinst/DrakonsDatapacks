# If last slot is empty
execute unless entity @s[nbt={Inventory:[{Slot:8b}]}] run function dc_manhunt_compass:update_compass

# If last slot is already a compass
execute if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:compass",tag:{dc_manhunt_compass:1b}}]}] run function dc_manhunt_compass:update_compass