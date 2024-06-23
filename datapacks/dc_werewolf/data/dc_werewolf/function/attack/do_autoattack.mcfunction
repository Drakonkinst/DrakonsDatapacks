tag @s add dc_werewolfDamaging
scoreboard players set #NumDamaged dc_value 0
scoreboard players set #TargetFound dc_value 0

# Autoattack everyone in front of the wolf
# Limited to 1 (so #NumDamaged and #TargetFound should theoretically not go above this either) for balancing
execute as @e[type=wolf,tag=dc_targetWerewolfModel,limit=1,distance=..10] at @s anchored eyes positioned ^ ^ ^2 as @n[type=!#drakoncore:not_mob,type=!wolf,distance=..2,tag=!dc_werewolfTransformed,tag=!dc_werewolfModel] run function dc_werewolf:attack/damage_autoattack
execute if score #NumDamaged dc_value matches 1.. run function dc_werewolf:attack/autoattack_effects

# If attacked no one this tick, change facing to look at nearest target if available
execute unless score #TargetFound dc_value matches 1.. run tag @s add dc_werewolfNeedsTarget

tag @s remove dc_werewolfDamaging 