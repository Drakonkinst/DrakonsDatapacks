# Copy item data
data modify storage dc_throwable_axes:axe_data FlyingAxe set from entity @s Item

# If currently nothing in hand, we will copy it into their mainhand - kill this item
execute unless data entity @a[tag=dc_currentAxeThrower,limit=1] SelectedItem run kill @s

# If currently something in hand, just put the item into their inventory
execute if data entity @a[tag=dc_currentAxeThrower,limit=1] SelectedItem run function dc_throwable_axes:drop/give_item

# If currently nothing in hand, copy it into their mainhand
execute unless data entity @a[tag=dc_currentAxeThrower,limit=1] SelectedItem as @e[type=minecraft:armor_stand,x=-1,y=-129,z=-1,dx=1,dy=1,dz=1,tag=dc_utility,limit=1] run function dc_throwable_axes:drop/copy_to_mainhand