tag @s remove pet_transfer_receiver
execute if entity @a[limit=1,tag=pet_transfer_receiver] run tag @s add dc_success
execute if entity @s[tag=dc_success] at @s run function dc_pet_transfer:transfer_offer_success
execute unless entity @s[tag=dc_success] run function dc_pet_transfer:transfer_offer_error
tag @s remove dc_success