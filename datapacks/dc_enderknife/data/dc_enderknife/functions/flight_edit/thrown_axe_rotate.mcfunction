# Scale all values by 1000 for decimal precision
# How much to rotate the axe by. Currently 90 degrees in the negative x axis.
scoreboard players set #ThrownAxeRotX dc_value -866
scoreboard players set #ThrownAxeRotY dc_value 0
scoreboard players set #ThrownAxeRotZ dc_value 0
scoreboard players set #ThrownAxeRotW dc_value 500
execute store result score #CurrAxeRotX dc_value run data get entity @s transformation.right_rotation[0] 1000
execute store result score #CurrAxeRotY dc_value run data get entity @s transformation.right_rotation[1] 1000
execute store result score #CurrAxeRotZ dc_value run data get entity @s transformation.right_rotation[2] 1000
execute store result score #CurrAxeRotW dc_value run data get entity @s transformation.right_rotation[3] 1000

# Apply a rotation via Hamiltonian product of Quaternions
# Insert prayer to relevant deities here
# https://en.wikipedia.org/wiki/Quaternion#Hamilton_product

# a1a2 - b1b2 - c1c2 - d1d2
scoreboard players operation #A dc_value = #CurrAxeRotX dc_value
scoreboard players operation #A dc_value *= #ThrownAxeRotX dc_value
scoreboard players operation #E dc_value = #CurrAxeRotY dc_value
scoreboard players operation #E dc_value *= #ThrownAxeRotY dc_value
scoreboard players operation #A dc_value -= #E dc_value
scoreboard players operation #E dc_value = #CurrAxeRotZ dc_value
scoreboard players operation #E dc_value *= #ThrownAxeRotZ dc_value
scoreboard players operation #A dc_value -= #E dc_value
scoreboard players operation #E dc_value = #CurrAxeRotW dc_value
scoreboard players operation #E dc_value *= #ThrownAxeRotW dc_value
scoreboard players operation #A dc_value -= #E dc_value

# a1b2 + b1a2 + c1d2 - d1c2
scoreboard players operation #B dc_value = #CurrAxeRotX dc_value
scoreboard players operation #B dc_value *= #ThrownAxeRotY dc_value
scoreboard players operation #E dc_value = #CurrAxeRotY dc_value
scoreboard players operation #E dc_value *= #ThrownAxeRotX dc_value
scoreboard players operation #B dc_value += #E dc_value
scoreboard players operation #E dc_value = #CurrAxeRotZ dc_value
scoreboard players operation #E dc_value *= #ThrownAxeRotW dc_value
scoreboard players operation #B dc_value += #E dc_value
scoreboard players operation #E dc_value = #CurrAxeRotW dc_value
scoreboard players operation #E dc_value *= #ThrownAxeRotZ dc_value
scoreboard players operation #B dc_value -= #E dc_value

# a1c2 - b1d2 + c1a2 + d1b2
scoreboard players operation #C dc_value = #CurrAxeRotX dc_value
scoreboard players operation #C dc_value *= #ThrownAxeRotZ dc_value
scoreboard players operation #E dc_value = #CurrAxeRotY dc_value
scoreboard players operation #E dc_value *= #ThrownAxeRotW dc_value
scoreboard players operation #C dc_value -= #E dc_value
scoreboard players operation #E dc_value = #CurrAxeRotZ dc_value
scoreboard players operation #E dc_value *= #ThrownAxeRotX dc_value
scoreboard players operation #C dc_value += #E dc_value
scoreboard players operation #E dc_value = #CurrAxeRotW dc_value
scoreboard players operation #E dc_value *= #ThrownAxeRotY dc_value
scoreboard players operation #C dc_value += #E dc_value

# a1d2 + b1c2 - c1b2 + d1a2
scoreboard players operation #D dc_value = #CurrAxeRotX dc_value
scoreboard players operation #D dc_value *= #ThrownAxeRotW dc_value
scoreboard players operation #E dc_value = #CurrAxeRotY dc_value
scoreboard players operation #E dc_value *= #ThrownAxeRotZ dc_value
scoreboard players operation #D dc_value += #E dc_value
scoreboard players operation #E dc_value = #CurrAxeRotZ dc_value
scoreboard players operation #E dc_value *= #ThrownAxeRotY dc_value
scoreboard players operation #D dc_value -= #E dc_value
scoreboard players operation #E dc_value = #CurrAxeRotW dc_value
scoreboard players operation #E dc_value *= #ThrownAxeRotX dc_value
scoreboard players operation #D dc_value += #E dc_value

#tellraw @a [{"text":"A: "},{"score":{"name":"#A","objective":"dc_value"}}]
#tellraw @a [{"text":"B: "},{"score":{"name":"#B","objective":"dc_value"}}]
#tellraw @a [{"text":"C: "},{"score":{"name":"#C","objective":"dc_value"}}]
#tellraw @a [{"text":"D: "},{"score":{"name":"#D","objective":"dc_value"}}]

# Scale everything down by 1000 * 1000
execute store result entity @s transformation.right_rotation[0] float 0.000001 run scoreboard players get #A dc_value
execute store result entity @s transformation.right_rotation[1] float 0.000001 run scoreboard players get #B dc_value
execute store result entity @s transformation.right_rotation[2] float 0.000001 run scoreboard players get #C dc_value
execute store result entity @s transformation.right_rotation[3] float 0.000001 run scoreboard players get #D dc_value

data modify entity @s interpolation_duration set value 2
#data modify entity @s interpolation_duration set value 0
data modify entity @s start_interpolation set value 0