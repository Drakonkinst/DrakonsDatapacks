# Stop Polar Bear from targeting anything, but do not erase AngryAt NBT
data merge entity @s {attributes:[{id:"minecraft:generic.follow_range",base:0.0f}]}
tag @s add dc_polarBearStop
tag @s remove dc_aggroPrey
tag @s remove dc_aggroThreat