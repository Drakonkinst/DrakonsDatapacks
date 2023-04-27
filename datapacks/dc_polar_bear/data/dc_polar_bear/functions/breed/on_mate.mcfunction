# Cooldown is (5 minutes * 60 seconds per minute / 5 seconds per update) = 60
scoreboard players set @s dc_polarBearBreed 60

# Consume 3 fishes worth of food = 3 fish * 8 counters per fish = 24
scoreboard players remove @s dc_polarBearFood 24

# Particles
particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0 8