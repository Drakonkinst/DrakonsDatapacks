# Runs once every 5 seconds on each player

execute store result score @s dc_temp_id run data get entity @s UUID[0]
execute if predicate dc_pet_finder:holding_bone run function dc_pet_finder:tag_nearby_wolves
execute if predicate dc_pet_finder:holding_raw_fish run function dc_pet_finder:tag_nearby_cats
execute if predicate dc_pet_finder:holding_seeds run function dc_pet_finder:tag_nearby_parrots