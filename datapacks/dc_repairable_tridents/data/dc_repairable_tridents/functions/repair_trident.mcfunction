# Remove 1 shard
execute as @e[type=item,tag=dc_prismarineShard,limit=1] run function drakoncore:api/remove_1_from_item_entity

# Repair trident
scoreboard players remove @s dc_value 63
execute if score @s dc_value matches 1.. store result entity @s Item.tag.Damage int 1 run scoreboard players get @s dc_value
execute if score @s dc_value matches ..0 run data modify entity @s Item.tag.Damage set value 0

# Remove xp & play effects
experience add @a[tag=dc_anvilCrafting,limit=1,gamemode=!creative] -1 levels
function drakoncore:api/anvil_success