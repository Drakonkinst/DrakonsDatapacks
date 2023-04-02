# Calculate transformation based on item
execute as @e[type=minecraft:armor_stand,x=-1,y=-129,z=-1,dx=1,dy=1,dz=1,tag=dc_utility,limit=1] run function dc_tool_embed:set_rotation

# Create embed
execute summon item_display run function dc_tool_embed:setup_embed

# Effects
playsound minecraft:item.trident.hit_ground block @a ~ ~ ~ 1 1

# Delete item entity
kill @s