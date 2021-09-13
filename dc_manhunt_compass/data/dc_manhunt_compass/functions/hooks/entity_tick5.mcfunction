# Runs 4 times per second on each entity
execute if entity @s[tag=dc_manhunt_anchor] run function dc_manhunt_compass:update_coords
kill @s[type=item,nbt={Item:{tag:{dc_manhunt_compass:1b}}}]