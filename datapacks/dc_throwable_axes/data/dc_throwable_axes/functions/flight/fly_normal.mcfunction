# Normal movement: Teleport forward, then look slightly downwards
# Naturally caps at looking straight down
# This looks okay for most throws, though it will always have a forward velocity
# when thrown straight up, which feels weird but is kept as a feature.
execute unless entity @s[tag=dc_recallAxe] run tp @s ^ ^ ^1
execute unless entity @s[tag=dc_recallAxe] at @s run tp @s ~ ~ ~ ~ ~1.5
execute if entity @s[tag=dc_thrownSoggy] at @s run tp @s ~ ~ ~ ~ ~2
