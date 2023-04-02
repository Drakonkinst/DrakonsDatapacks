# Add NBT
data merge entity @s {Invulnerable:1b,Invisible:1b,Tags:["dc_grave"],Pose:{Head:[0f,0f,350f]},DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:cobblestone_wall",Count:1b}],NoGravity:1b,HandItems:[{},{}],CustomNameVisible:1b,CustomName:"\"Revive Me!\""}

# Add y offset
tp @s ~ ~-1.39 ~

# Add UUID
execute store result score @s dc_temp_id run data get entity @a[tag=dc_spawningGrave,limit=1] UUID[0]