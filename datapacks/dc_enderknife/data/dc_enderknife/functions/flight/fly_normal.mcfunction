# Normal movement: Teleport forward, then look slightly downwards
# Naturally caps at looking straight down
# This looks okay for most throws, though it will always have a forward velocity
# when thrown straight up, which feels weird but is kept as a feature.
execute run tp @s ^ ^ ^.5
execute at @s run tp @s ~ ~ ~ ~ ~.75