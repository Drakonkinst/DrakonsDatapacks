# Running as thrown item
data modify storage dc_throwable_axes:item_data ThrownItemData set from entity @s Item
data modify storage dc_throwable_axes:item_data ThrownItemData.tag.Thrower set from entity @s Thrower
execute at @s summon item_display run function dc_throwable_axes:throw/setup_thrown_axe
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.85
scoreboard players set @a[tag=dc_axeThrower,limit=1] dc_damageDelay 5
kill @s