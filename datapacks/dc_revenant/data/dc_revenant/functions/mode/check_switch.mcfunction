tag @s add dc_currentRevenant
scoreboard players reset #InMeleeDistance dc_value

# If the Stray has a target, set InMeleeDistance to 0 or 1. If no target, leave InMeleeDistance unset
execute on target store success score #InMeleeDistance dc_value at @s if entity @e[type=stray,distance=..7,tag=dc_currentRevenant,limit=1]
execute if entity @s[tag=!dc_revenantMelee] if score #InMeleeDistance dc_value matches 1 run function dc_revenant:mode/ranged_to_melee
execute if entity @s[tag=dc_revenantMelee] if score #InMeleeDistance dc_value matches 0 run function dc_revenant:mode/melee_to_ranged

tag @s remove dc_currentRevenant