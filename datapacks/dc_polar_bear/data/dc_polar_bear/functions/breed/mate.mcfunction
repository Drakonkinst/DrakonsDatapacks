# Spawn baby! Age: -24000 so it takes 20 minutes to grow up, like naturally spawned Polar Bear Cub
summon polar_bear ~ ~ ~ {Age:-24000}

# Spawn XP orbs
# Normal breeding drops 1-7 XP, but for simplicity (and also due to difficulty),
# Polar Bears drop the maximum amount of XP
# This only occurs if a player is nearby, within 32 blocks
execute if entity @a[distance=..32,limit=1] run summon experience_orb ~ ~ ~ {Value:7s} 

# Mate effects
function dc_polar_bear:breed/on_mate
execute as @e[type=polar_bear,distance=..3,tag=dc_polarBearMate,limit=1] at @s run function dc_polar_bear:breed/on_mate

# Stop targeting, just in case
function dc_polar_bear:ai/stop_targeting

# Reset
tag @e[type=polar_bear,distance=..3] remove dc_polarBearMate