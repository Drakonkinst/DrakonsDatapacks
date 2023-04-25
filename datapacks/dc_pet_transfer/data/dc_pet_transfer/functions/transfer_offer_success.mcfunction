tag @s add pet_transfer_giver
scoreboard players set #PetsTransferred dc_value 0
scoreboard players operation #PetOwnerId dc_playerId = @s dc_playerId
execute as @e[type=#dc_pet_transfer:tameable,distance=..5] run function dc_pet_transfer:check_for_transfer
tag @s remove pet_transfer_giver
tellraw @s ["",{"text":"Transfer success! Transferred ","color":"green"},{"score":{"name":"#PetsTransferred","objective":"dc_value"},"color":"green"},{"text":" pets to ","color":"green"},{"selector":"@a[tag=pet_transfer_receiver,limit=1]","color":"green"},{"text":"!","color":"green"}]
tellraw @a[tag=pet_transfer_receiver,limit=1] ["",{"text":"Transfer success! You received ","color":"green"},{"score":{"name":"#PetsTransferred","objective":"dc_value"},"color":"green"},{"text":" pets from ","color":"green"},{"selector":"@s","color":"green"},{"text":"!","color":"green"}]
tag @a[limit=1,tag=pet_transfer_receiver] remove pet_transfer_receiver