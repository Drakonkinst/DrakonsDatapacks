# Makes the arrow appear like a normal tipped arrow instead of uncraftable when picked up
data modify entity @s item.components."minecraft:potion_contents" set value {potion:"minecraft:slowness"}
data modify entity @s item.id set value "minecraft:tipped_arrow"