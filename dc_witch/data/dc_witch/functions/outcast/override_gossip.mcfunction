data modify storage drakoncore:dc_witch VillagerGossip set value {Type:"major_negative",Value:1000}
data modify storage drakoncore:dc_witch VillagerGossip.Target set from entity @a[tag=dc_outcast_target,limit=1] UUID
data modify entity @s Gossips append from storage drakoncore:dc_witch VillagerGossip

