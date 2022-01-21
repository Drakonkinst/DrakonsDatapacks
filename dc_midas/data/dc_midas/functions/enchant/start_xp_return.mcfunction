execute store result score @s dc_value run data get entity @s HandItems[0].Count
execute if score @s dc_value matches 1.. run function dc_midas:enchant/refund_orb