
execute store result score #AngerTime dc_value run data get entity @s AngerTime

scoreboard players reset #HasTarget dc_value
execute on target run function dc_polar_bear:ai/track_target

# If hunting prey and a threat comes close, reset target
execute if entity @s[tag=dc_aggroPrey] if entity @e[type=#dc_polar_bear:threats,distance=..8,limit=1,tag=!dc_polarBearTarget] run function dc_polar_bear:ai/search_for_target

# Polar Bear loses AngryAt AND target tag upon being hit, which is quite annoying
# To compensate, we allow it to dash even at close range, which always deals damage
#execute on target run effect give @s glowing 1 0 true
#execute if entity @s[tag=dc_aggroThreat] unless data entity @s AngryAt run say NOT ANGRY BUT THREATENED

execute unless data entity @s AngryAt run function dc_polar_bear:ai/search_for_target

execute if data entity @s AngryAt run function dc_polar_bear:ai/validate_target

execute on target run tag @s remove dc_polarBearTarget
