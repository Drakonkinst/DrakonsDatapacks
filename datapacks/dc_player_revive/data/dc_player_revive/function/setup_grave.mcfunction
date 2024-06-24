# Add NBT
item replace entity @s armor.head with minecraft:cobblestone_wall
data merge entity @s {Invulnerable:1b,Invisible:1b,Tags:["dc_grave"],Pose:{Head:[0f,0f,350f]},DisabledSlots:2039583,NoGravity:1b,HandItems:[{},{}],CustomNameVisible:1b,CustomName:"\"Revive Me!\""}

# Add y offset
tp @s ~ ~-1.39 ~

# Add ID
scoreboard players operation @s dc_playerId = @a[tag=dc_spawningGrave,limit=1] dc_playerId