# Set item
data modify entity @s item set from storage dc_throwable_swords:item_data ThrownItemData
scoreboard players operation @s dc_playerId = #ThrowerId dc_playerId
execute if score #IsCreativeThrower dc_value matches 1 run tag @s add dc_noDamageThrow

# Set transform rotation to look like it's facing forwards
data modify entity @s transformation set value {scale:[0.8f,0.8f,0.8f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.354f, -0.612f, -0.354f, 0.612f],translation:[0.0f,0f,0.0f]}

# Set base rotation to match player
data modify entity @s Rotation set from entity @a[tag=dc_swordThrower,limit=1] Rotation

execute if data storage dc_throwable_swords:item_data ThrownItemData.tag.Enchantments[{id:"minecraft:fire_aspect"}] run tag @s add dc_swordFireAspect
execute if data storage dc_throwable_swords:item_data ThrownItemData.tag.Enchantments[{id:"minecraft:sharpness"}] run tag @s add dc_swordSharpness

# Add tag to begin movement
tag @s add dc_thrownSword