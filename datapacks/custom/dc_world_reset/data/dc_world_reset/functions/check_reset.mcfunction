execute store result score @s dc_xPos run data get entity @s Pos[0]
execute store result score @s dc_yPos run data get entity @s Pos[1]
execute store result score @s dc_zPos run data get entity @s Pos[2]
execute if entity @s[tag=!dc_world_reset] if score @s dc_xPos matches 9990000..10100000 if score @s dc_zPos matches -1000..1000 run function dc_world_reset:reset_player