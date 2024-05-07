execute positioned ~ ~1 ~ run function drakoncore:internal/durability/break_effect
item replace entity @s armor.head with minecraft:air
particle minecraft:item{item:"minecraft:leather_helmet"} ~ ~2 ~ 0.25 0.25 0.25 0 5
playsound minecraft:entity.item.break player @s
