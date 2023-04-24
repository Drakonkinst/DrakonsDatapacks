# Runs once every 5 seconds on each player

scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
execute if predicate dc_pet_finder:holding_bone positioned ~-50 ~-50 ~-50 as @e[type=wolf,dx=101,dy=101,dz=101] run function dc_pet_finder:tag_pet_if_match
execute if predicate dc_pet_finder:holding_raw_fish positioned ~-50 ~-50 ~-50 as @e[type=cat,dx=101,dy=101,dz=101] run function dc_pet_finder:tag_pet_if_match
execute if predicate dc_pet_finder:holding_seeds positioned ~-50 ~-50 ~-50 as @e[type=parrot,dx=101,dy=101,dz=101] run function dc_pet_finder:tag_pet_if_match