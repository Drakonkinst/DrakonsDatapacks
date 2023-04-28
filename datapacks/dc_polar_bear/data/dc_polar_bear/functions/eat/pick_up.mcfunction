# Sound effect
execute at @s run playsound minecraft:entity.item.pickup block @a

# Decrement count
execute store result score #Count dc_value run data get entity @s Item.Count
scoreboard players remove #Count dc_value 1
execute store result entity @s Item.Count byte 1 run scoreboard players get #Count dc_value
execute unless score #Count dc_value matches 1.. run kill @s

# Successfully ate item
scoreboard players set #AteItem dc_value 1