# Remove tag from previous searches
tag @s remove dc_locatedGrave
execute if score @s dc_temp_id = @a[tag=dc_seekingGrave,limit=1] dc_temp_id run tag @s add dc_locatedGrave