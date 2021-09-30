# Random UUID from generator, try not to use this for anything else
attribute @s minecraft:generic.max_health modifier add 6138c8e3-830b-44d8-aba2-f0b812cc63d7 AssassinHealthBuff 20 add
effect give @s minecraft:regeneration 2 5 true

# Grace period
effect give @s minecraft:resistance 10 5 false

# Update the health bar since it seems lazy
effect give @s minecraft:instant_health 1 0 true

# Re-equip assassin armor
function dc_manhunt_assassin:equip_assassin_armor