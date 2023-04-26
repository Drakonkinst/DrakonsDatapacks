# Reset
scoreboard players reset #AggroType dc_value
tag @s remove dc_aggroThreat
tag @s remove dc_aggroPrey

# Aggro at nearby threat
execute unless score #AggroType dc_value matches 1.. as @e[type=#dc_polar_bear:threats,distance=..8,sort=furthest] unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] run function dc_polar_bear:ai/aggro_threat

# Aggro at nearby prey
execute unless score #AggroType dc_value matches 1.. as @e[type=#dc_polar_bear:prey,distance=..12,sort=nearest,limit=1] run function dc_polar_bear:ai/aggro_prey

# Aggro at nearby favorite prey
execute unless score #AggroType dc_value matches 1.. as @e[type=#dc_polar_bear:favorite_prey,distance=..20,sort=nearest,limit=1] run function dc_polar_bear:ai/aggro_prey

# If targeting prey, check if the target is too deep
execute if score #AggroType dc_value matches 1 run function dc_polar_bear:ai/check_prey_too_deep

# Set AngryAt NBT
execute if score #AggroType dc_value matches 1.. run data modify entity @s AngryAt set from storage dc_polar_bear:ai TargetUUID

# Add tags if targeting prey
execute if score #AggroType dc_value matches 1 run tag @s add dc_aggroPrey
execute if score #AggroType dc_value matches 1 run data modify entity @s AngerTime set value 40

# Add tags if targeting threat
execute if score #AggroType dc_value matches 2 run tag @s add dc_aggroThreat
execute if score #AggroType dc_value matches 2 run data modify entity @s AngerTime set value 400



