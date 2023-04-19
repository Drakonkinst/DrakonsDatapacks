execute as @e[type=armor_stand,tag=dc_manhunt_anchor] run function dc_manhunt_compass:update_coords
kill @e[type=item,nbt={Item:{tag:{dc_manhunt_compass:1b}}}]