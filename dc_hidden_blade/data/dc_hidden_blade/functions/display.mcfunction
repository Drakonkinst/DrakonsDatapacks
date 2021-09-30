tag @s add empoweredHiddenBlade
execute if score #HiddenBladeDamage dc_value matches 5.. run title @s times 0 10 20
execute if score @s dc_HB_assassin matches 1 run function dc_hidden_blade:display_1
execute if score @s dc_HB_assassin matches 2 run function dc_hidden_blade:display_2
execute if score @s dc_HB_assassin matches 3 run function dc_hidden_blade:display_3
execute if score @s dc_HB_assassin matches 4 run function dc_hidden_blade:display_4
execute if score @s dc_HB_assassin matches 5 run function dc_hidden_blade:display_5

execute if score @s dc_HB_assassin matches 1 run effect give @s strength 1 1 true
execute if score @s dc_HB_assassin matches 2 run effect give @s strength 1 3 true
execute if score @s dc_HB_assassin matches 3 run effect give @s strength 1 5 true
execute if score @s dc_HB_assassin matches 4 run effect give @s strength 1 7 true
execute if score @s dc_HB_assassin matches 5 run effect give @s strength 1 9 true

scoreboard players operation @s dc_HB_prevDmg = #HiddenBladeDamage dc_value