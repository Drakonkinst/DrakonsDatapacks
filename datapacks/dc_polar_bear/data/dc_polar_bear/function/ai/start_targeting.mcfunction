# Restore follow range to enable targeting again
data merge entity @s {attributes:[{id:"minecraft:generic.follow_range",base:20.0f}]}
tag @s remove dc_polarBearStop

# Set lunge to half the normal cooldown so it isn't used immediately
execute unless score @s dc_polarBearLunge matches 75.. run scoreboard players set @s dc_polarBearLunge 75