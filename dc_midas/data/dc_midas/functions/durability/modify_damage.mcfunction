# This can maybe be moved outside so it can be more generic
# Or force Item conversion to use this implementation
execute store result score @s dc_value run data get entity @s HandItems[0].tag.Damage

#tellraw @a ["","CALLED ",{"score":{"name":"#MAX_A","objective":"dc_value"}}," -> ",{"score":{"name":"#MAX_B","objective":"dc_value"}}]

# MAX_A = the max durability of the original item
# MAX_B = the max durability of the converted item
scoreboard players operation @s dc_value *= #MAX_B dc_value
scoreboard players operation @s dc_value /= #MAX_A dc_value

# Add penalty as long as it does not break weapon
scoreboard players add @s dc_value 1
execute if score @s dc_value > #MAX_B dc_value run scoreboard players operation @s dc_value = #MAX_B dc_value

execute store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players get @s dc_value