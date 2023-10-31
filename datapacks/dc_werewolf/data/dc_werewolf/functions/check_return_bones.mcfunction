execute store result score #KeepInventoryOn dc_value run gamerule keepInventory
execute if score #KeepInventoryOn dc_value matches 1 unless score @s dc_health matches ..0 run function dc_werewolf:return_bones
execute unless score #KeepInventoryOn dc_value matches 1 run function dc_werewolf:return_bones