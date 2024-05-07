# Add 1 to the item's damage
scoreboard players add #Damage dc_value 1

# Store the result to storage NBT
execute store result storage drakoncore:durability_damage damage int 1 run scoreboard players get #Damage dc_value

# Apply
function drakoncore:internal/durability/apply with storage drakoncore:durability_damage