# Prevent polar bear from getting stuck in ice
execute if predicate drakoncore:in_water run function dc_polar_bear:icebreaker

execute as @e[type=item,tag=!dc_polarBearChecked,distance=..20] run function dc_polar_bear:eat/check_item

# Polar Bears can store a maximum of 48 seconds of healing
# At current value, this equates to 80 health
# Can only pick up food while not threatened
execute unless entity @s[tag=dc_aggroThreat] unless score @s dc_polarBearEat matches 1.. run function dc_polar_bear:eat/pick_up_nearby

# If not full health, try to heal
execute store result score #Health dc_value run data get entity @s Health 10
execute unless score #Health dc_value matches 800.. if score @s dc_polarBearFood matches 1.. run function dc_polar_bear:eat/consume_food

# If leashed to an entity, break it by assigning it to the utility armor stand,
# which should always be out of reach
execute if data entity @s Leash.UUID run data modify entity @s Leash.UUID set from entity @e[type=minecraft:armor_stand,x=-1,y=-129,z=-1,dx=1,dy=1,dz=1,tag=dc_utility,limit=1] UUID

# If leashed to a block, kill the leash knot
execute if data entity @s Leash.X on leasher run kill @s