execute store result score @s dc_HB_fallen run data get entity @s FallDistance 10.0
scoreboard players set @s dc_HB_assassin 0
execute if score @s dc_HB_fallen matches 45..94 run scoreboard players add @s dc_HB_assassin 1
execute if score @s dc_HB_fallen matches 95..144 run scoreboard players add @s dc_HB_assassin 2
execute if score @s dc_HB_fallen matches 145..194 run scoreboard players add @s dc_HB_assassin 3
execute if score @s dc_HB_fallen matches 195.. run scoreboard players add @s dc_HB_assassin 4
execute if score @s dc_HB_sneak matches 3.. run scoreboard players add @s dc_HB_assassin 1

scoreboard players set #HiddenBladeDamage dc_value 6
scoreboard players operation #HiddenBladeDamage dc_value *= @s dc_HB_assassin
scoreboard players add #HiddenBladeDamage dc_value 4

execute if score #HiddenBladeDamage dc_value matches 5.. run function dc_hidden_blade:display
execute if entity @s[tag=empoweredHiddenBlade] unless score #HiddenBladeDamage dc_value matches 5.. run function dc_hidden_blade:remove_display