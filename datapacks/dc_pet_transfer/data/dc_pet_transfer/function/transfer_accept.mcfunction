tag @s remove pet_transfer_receiver
execute if entity @a[limit=1,tag=pet_transfer_receiver] run tag @s add dc_bad_accept
execute if entity @s[tag=dc_bad_accept] run function dc_pet_transfer:transfer_accept_error
execute unless entity @s[tag=dc_bad_accept] run function dc_pet_transfer:transfer_accept_success
tag @s remove dc_bad_accept