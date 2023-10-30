execute if score #IsMoving dc_value matches 1 run function dc_werewolf:model/unsit

# If holding sit for 5 seconds, lock the sitting state
# Otherwise, allow early unlocking
execute if entity @s[tag=dc_werewolfSit] if score #IsSneaking dc_value matches 0 unless score @s dc_werewolfSit matches 100.. run function dc_werewolf:model/unsit