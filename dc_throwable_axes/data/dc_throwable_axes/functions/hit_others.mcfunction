# spawn painting, boat, and minecart item entities from custom loot tables:
execute at @s[type=painting] positioned ^ ^ ^0.2 run loot spawn ~ ~ ~ loot dc_throwable_axes:painting

execute at @s[type=boat,nbt={Type:"oak"}] run loot spawn ~ ~ ~ loot dc_throwable_axes:oak_boat
execute at @s[type=boat,nbt={Type:"spruce"}] run loot spawn ~ ~ ~ loot dc_throwable_axes:spruce_boat
execute at @s[type=boat,nbt={Type:"birch"}] run loot spawn ~ ~ ~ loot dc_throwable_axes:birch_boat
execute at @s[type=boat,nbt={Type:"jungle"}] run loot spawn ~ ~ ~ loot dc_throwable_axes:jungle_boat
execute at @s[type=boat,nbt={Type:"acacia"}] run loot spawn ~ ~ ~ loot dc_throwable_axes:acacia_boat
execute at @s[type=boat,nbt={Type:"dark_oak"}] run loot spawn ~ ~ ~ loot dc_throwable_axes:dark_oak_boat

execute at @s[type=minecart] run loot spawn ~ ~ ~ loot dc_throwable_axes:minecart
execute at @s[type=chest_minecart] run loot spawn ~ ~ ~ loot dc_throwable_axes:chest_minecart
execute at @s[type=hopper_minecart] run loot spawn ~ ~ ~ loot dc_throwable_axes:hopper_minecart
execute at @s[type=furnace_minecart] run loot spawn ~ ~ ~ loot dc_throwable_axes:furnace_minecart

# play entity-specific sounds:
execute at @s[type=painting] run playsound minecraft:entity.painting.break ambient @a
execute at @s[type=leash_knot] run playsound minecraft:entity.leash_knot.break ambient @a
execute at @s[type=shulker_bullet] run playsound minecraft:entity.shulker_bullet.hurt hostile @a
#execute if entity @s[type=item_frame] run playsound minecraft:entity.item_frame.break ambient @a
#execute if entity @s[type=glow_item_frame] run playsound minecraft:entity.item_frame.break ambient @a

# kill other entities:
kill @s[type=painting]
kill @s[type=boat]
kill @s[type=minecart]
kill @s[type=chest_minecart]
kill @s[type=hopper_minecart]
kill @s[type=furnace_minecart]
kill @s[type=fireball]
kill @s[type=small_fireball]
kill @s[type=dragon_fireball]
kill @s[type=shulker_bullet]
kill @s[type=leash_knot]
kill @s[type=wither_skull]
execute at @s[type=end_crystal] run summon snowball ~ ~2.301 ~ {Motion:[0.0,-1.0,0.0]}