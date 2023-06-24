# Running as thrown item
data modify storage dc_enderknife:item_data ThrownItemData set from entity @s Item
data modify storage dc_enderknife:item_data ThrownItemData.tag.Thrower set from entity @s Thrower
execute on origin run scoreboard players operation #ThrowerId dc_playerId = @s dc_playerId

# Mark sword as no damage if thrower is in creative
scoreboard players reset #IsCreativeThrower dc_value
execute on origin if entity @s[gamemode=creative] run scoreboard players set #IsCreativeThrower dc_value 1

execute at @s summon item_display run function dc_enderknife:throw/setup_thrown_sword

playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.85
scoreboard players set @a[tag=dc_swordThrower,limit=1] dc_damageDelay 5
kill @s