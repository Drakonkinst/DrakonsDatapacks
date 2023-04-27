# Makes the arrow appear like a normal tipped arrow instead of uncraftable
# when picked up
data modify entity @s Potion set value "minecraft:long_slowness"

# This line doesn't actually work due to https://bugs.mojang.com/browse/MC-250096
# Causing two durations to appear in the arrow
# They are functionally 30 seconds, same as long_slowness arrows
data remove entity @s CustomPotionEffects