# Add 1 to the item's damage
scoreboard players add @s dc_value 1

# Store the result to storage NBT
execute store result storage drakoncore:durability_damage Damage int 1 run scoreboard players get @s dc_value