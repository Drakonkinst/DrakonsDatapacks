execute store result score #DistanceFallen dc_value run data get entity @s FallDistance 10.0
scoreboard players set @s dc_value 0
execute if score #DistanceFallen dc_value matches 45..94 run scoreboard players set @s dc_value 1
execute if score #DistanceFallen dc_value matches 95..144 run scoreboard players set @s dc_value 2
execute if score #DistanceFallen dc_value matches 145..194 run scoreboard players set @s dc_value 3
execute if score #DistanceFallen dc_value matches 195.. run scoreboard players set @s dc_value 4
execute if score @s dc_hb_sneak matches 3.. run scoreboard players add @s dc_value 1

execute if score @s dc_value matches 1.. run function dc_hidden_blade:apply
execute if entity @s[tag=dc_hb_active] unless score @s dc_value matches 1.. run function dc_hidden_blade:remove_display