# Stop Polar Bear from targeting anything, but do not erase AngryAt NBT
attribute @s minecraft:generic.follow_range base set 0
tag @s add dc_polarBearStop
tag @s remove dc_aggroPrey
tag @s remove dc_aggroThreat