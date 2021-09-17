# Run when a player dies

execute store result score @s dc_xPos run data get entity @s Pos[0]
execute store result score @s dc_yPos run data get entity @s Pos[1]
execute store result score @s dc_zPos run data get entity @s Pos[2]

execute if predicate drakoncore:in_overworld run tellraw @s ["",{"text":"You died in the Overworld at (","color":"dark_green"},{"score":{"name":"@s","objective":"dc_xPos"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@s","objective":"dc_yPos"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@s","objective":"dc_zPos"},"color":"dark_green"},{"text":")","color":"dark_green"}]
execute if predicate drakoncore:in_nether run tellraw @s ["",{"text":"You died in the Nether at (","color":"dark_green"},{"score":{"name":"@s","objective":"dc_xPos"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@s","objective":"dc_yPos"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@s","objective":"dc_zPos"},"color":"dark_green"},{"text":")","color":"dark_green"}]
execute if predicate drakoncore:in_end run tellraw @s ["",{"text":"You died in the End at (","color":"dark_green"},{"score":{"name":"@s","objective":"dc_xPos"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@s","objective":"dc_yPos"},"color":"dark_green"},{"text":", ","color":"dark_green"},{"score":{"name":"@s","objective":"dc_zPos"},"color":"dark_green"},{"text":")","color":"dark_green"}]