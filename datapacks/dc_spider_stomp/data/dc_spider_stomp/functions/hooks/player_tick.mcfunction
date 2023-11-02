# Runs 20 times per second on each player
execute store result score #IsFalling dc_value unless predicate drakoncore:on_ground run data get entity @s FallDistance

# Check if falling at least one full block
# Must have something in boots slot
execute if score #IsFalling dc_value matches 1.. if data entity @s Inventory[{Slot:100b}] run function dc_spider_stomp:check_nearby_mobs