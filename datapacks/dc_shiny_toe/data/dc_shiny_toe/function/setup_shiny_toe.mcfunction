tag @s add dc_mob_transformed
# TODO: Should be dc_shiny_toe
tag @s add shiny_toe
item replace entity @s armor.head with minecraft:leather_helmet[unbreakable={},enchantment_glint_override=true,dyed_color=3868470] 1
item replace entity @s armor.chest with minecraft:leather_chestplate[unbreakable={},enchantment_glint_override=true,dyed_color=3868470] 1
item replace entity @s armor.legs with minecraft:leather_leggings[unbreakable={},enchantment_glint_override=true,dyed_color=3868470] 1
item replace entity @s armor.feet with minecraft:leather_boots[unbreakable={},enchantment_glint_override=true,dyed_color=3868470] 1
item replace entity @s weapon.mainhand with minecraft:wooden_sword[unbreakable={}] 1
attribute @s minecraft:generic.max_health base set 45
attribute @s minecraft:generic.follow_range base set 60
attribute @s minecraft:generic.movement_speed base set 0.5
attribute @s minecraft:zombie.spawn_reinforcements base set 0.8
data merge entity @s {CanBreakDoors:1b,DeathLootTable:"dc_shiny_toe:shiny_toe",CanPickUpLoot:1b,Health:45f,CustomName:"{\"text\":\"Shiny Toe\",\"color\":\"yellow\"}",HandDropChances:[-327.67F,0.85F],ArmorDropChances:[-327.67F,-327.67F,-327.67F,-327.67F],IsBaby:0b}