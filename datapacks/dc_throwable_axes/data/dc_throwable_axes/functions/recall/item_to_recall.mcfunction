data modify storage dc_throwable_axes:item_data ThrownItemData set from entity @s Item
data modify storage dc_throwable_axes:item_data ThrownItemData.tag.Thrower set from entity @s Thrower

scoreboard players reset #ThrowerId dc_playerId
execute on origin run scoreboard players operation #ThrowerId dc_playerId = @s dc_playerId
execute at @s summon item_display run function dc_throwable_axes:recall/setup_recall_from_item

# Delete item
kill @s