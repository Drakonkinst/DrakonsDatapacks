# Mark target
scoreboard players reset #HasTarget dc_value
execute on target run function dc_polar_bear:ai/track_target

# If a threat comes close and not already threatened, reset target
execute if entity @s[tag=!dc_aggroThreat] if entity @e[type=#dc_polar_bear:threats,distance=..8,limit=1,tag=!dc_polarBearTarget] run data remove entity @s AngryAt

# Polar Bear loses AngryAt AND target tag upon being hit, which is quite annoying
# To compensate, we allow it to dash even at close range, which always deals damage
#execute store result score #AngerTime dc_value run data get entity @s AngerTime
#execute on target run effect give @s glowing 1 0 true
#execute if entity @s[tag=dc_aggroThreat] unless data entity @s AngryAt run say NOT ANGRY BUT THREATENED

execute if score @s dc_polarBearEat matches 1.. positioned ^ ^1 ^1 run function dc_polar_bear:eat/eat_tick5

# Search for a new target
execute unless data entity @s AngryAt run function dc_polar_bear:ai/search_for_target

# Check that polar bear intent matches targeting AI
execute if data entity @s AngryAt run function dc_polar_bear:ai/validate_target

# Reset
execute on target run tag @s remove dc_polarBearTarget
