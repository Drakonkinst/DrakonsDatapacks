execute store result score #WearingArmor dc_value if predicate dc_werewolf:wearing_armor
execute if score #WearingArmor dc_value matches 1.. run title @s actionbar {"text":"Cannot transform with armor or offhand items!","color":"red"}
execute unless score #WearingArmor dc_value matches 1.. run function dc_werewolf:increment_transform