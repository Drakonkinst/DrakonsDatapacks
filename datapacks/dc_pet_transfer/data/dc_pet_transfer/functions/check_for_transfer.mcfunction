scoreboard players reset #PetMatches dc_value
execute on owner if score @s dc_playerId = #PetOwnerId dc_playerId run scoreboard players set #PetMatches dc_value 1
execute if score #PetMatches dc_value matches 1 run data modify entity @s Owner set from entity @a[limit=1,tag=pet_transfer_receiver] UUID
execute if score #PetMatches dc_value matches 1 run scoreboard players add #PetsTransferred dc_value 1