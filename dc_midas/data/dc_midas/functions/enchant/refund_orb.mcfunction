scoreboard players remove @s dc_value 1
summon minecraft:experience_orb ~ ~ ~ {Value:1000}
execute if score @s dc_value matches 1.. run function dc_midas:enchant/refund_orb