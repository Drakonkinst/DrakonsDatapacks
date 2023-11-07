execute if score #IsMoving dc_value matches 1 unless score #VehicleType dc_value matches 1.. run function dc_werewolf:model/unsit

# If holding sit for 5 seconds, lock the sitting state
# Otherwise, allow early unlocking
execute if entity @s[tag=dc_werewolfSit] if score #IsSneaking dc_value matches 0 unless score @s dc_werewolfSitSprint matches 100.. unless score #VehicleType dc_value matches 1.. run function dc_werewolf:model/unsit