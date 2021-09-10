execute store result score @s dc_temp_id run data get entity @s Owner[0]
execute if score @s dc_temp_id = @a[limit=1,tag=pet_transfer_giver] dc_temp_id run function dc_pet_transfer:mark_for_transfer