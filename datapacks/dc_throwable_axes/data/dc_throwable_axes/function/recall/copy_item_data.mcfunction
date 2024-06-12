# Add NBT
data merge entity @s {Tags:["dc_thrownAxe","dc_noDamageThrow","dc_recallAxe"],Marker:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:2039583,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:diamond_axe",count:1},{}],Pose:{Head:[180f,0f,0f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,0f]}}

# Copy held item
data modify entity @s HandItems[0] set from storage dc_throwable_axes:axe_data AxeItem

# Add enchantment tags

# Rotate to face nearest player
execute at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~