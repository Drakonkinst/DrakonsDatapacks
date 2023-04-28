# Stop Polar Bear from targeting anything, but do not erase AngryAt NBT
data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0.0f}]}
tag @s add dc_polarBearStop
tag @s remove dc_aggroPrey
tag @s remove dc_aggroThreat