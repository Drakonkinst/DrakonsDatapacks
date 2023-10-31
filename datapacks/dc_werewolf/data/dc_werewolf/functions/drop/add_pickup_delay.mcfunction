data modify entity @s PickupDelay set value 40s
data modify entity @s Thrower set from entity @a[tag=dc_dropEquipAnchor,limit=1] UUID

# No need to set this for multiplayer-friendly gameplay
# data modify entity @s Owner set from entity @a[tag=dc_dropEquipAnchor,limit=1] UUID