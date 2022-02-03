# Check if trident is damaged
execute store result score @s dc_value run data get entity @s Item.tag.Damage
execute if score @s dc_value matches 1.. run function dc_repairable_tridents:check_nearby_shards