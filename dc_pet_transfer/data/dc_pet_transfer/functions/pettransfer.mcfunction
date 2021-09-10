execute if score @s pettransfer matches 1 run function dc_pet_transfer:give_book
execute if score @s pettransfer matches 2 run function dc_pet_transfer:transfer_offer
execute if score @s pettransfer matches 3 run function dc_pet_transfer:transfer_accept
execute if score @s pettransfer matches 4 run function dc_pet_transfer:cancel

scoreboard players set @s pettransfer 0
scoreboard players enable @s pettransfer