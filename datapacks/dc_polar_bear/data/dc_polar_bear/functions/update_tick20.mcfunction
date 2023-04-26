# Prevent polar bear from getting stuck in ice
execute if block ~ ~ ~ water run function dc_polar_bear:icebreaker

execute as @e[type=item,tag=!dc_polarBearChecked,distance=..20] run function dc_polar_bear:eat/check_item

# Polar Bears can store a maximum of 24 seconds of healing
# At current value, this equates to 80 health
# Can only pick up food while not threatened
execute unless entity @s[tag=dc_aggroThreat] unless score @s dc_polarBearEat matches 1.. unless score @s dc_polarBearFood matches 24.. run function dc_polar_bear:eat/pick_up_nearby

# If not full health, try to heal
execute store result score #Health dc_value run data get entity @s Health 10
execute unless score #Health dc_value matches 800.. if score @s dc_polarBearFood matches 1.. run function dc_polar_bear:eat/consume_food