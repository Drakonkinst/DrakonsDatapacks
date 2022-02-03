# Stop execution depending on requirements
execute if entity @s[tag=dc_amethyst_not_absorbed] unless predicate dc_creative:portal/portal_creation_full_requirements run function dc_creative:portal/behavior/break_portal
execute if entity @s[tag=!dc_amethyst_not_absorbed] unless predicate dc_creative:portal/lodestones_facing_any run function dc_creative:portal/behavior/break_portal
execute unless predicate dc_creative:portal/starter_block run function dc_creative:portal/behavior/break_portal

# Events 
execute if entity @s[scores={dc_portalDelay1=40}] run function dc_creative:portal/creation/initialize/amethyst_blocks_absorb
execute if entity @s[scores={dc_portalDelay1=0}] run function dc_creative:portal/creation/place/event

# Particles
particle crit ~ ~0.5 ~ 0 0 0 1 4
particle white_ash ~ ~2 ~ 4 2 4 0.1 1

# Decrement marker delay score
scoreboard players remove @s dc_portalDelay1 1