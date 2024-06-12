# Sound effect
execute at @s run playsound minecraft:entity.item.pickup block @a

# Decrement count
function drakoncore:api/remove_1_from_item_entity

# Successfully ate item
scoreboard players set #AteItem dc_value 1