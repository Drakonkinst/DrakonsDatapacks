data modify storage dc_polar_bear:ai TargetUUID set from entity @s UUID
#say Targeting @s as threat
scoreboard players set #AggroType dc_value 2

# Location should still be the polar bear, so this works
# Not sure if it fits with Minecraft though so leaving it out
#particle minecraft:angry_villager ^ ^1 ^1 0.1 0.1 0.1 0 1 normal