data modify storage drakoncore:dc_witch VillagerGossip set value {Type:"major_negative",Value:1000}
data modify storage drakoncore:dc_witch VillagerGossip.Target set from entity @a[tag=dc_outcast_target,limit=1] UUID
data modify entity @s Gossips append from storage drakoncore:dc_witch VillagerGossip

# Add a tag to say that the villager's Gossip has been modified. This can be used whenever we want to reset
# gossip later, but this shouldn't exempt Gossip from being modified again in the case of multiple outcast players
tag @s add dc_outcastApplied