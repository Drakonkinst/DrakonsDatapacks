execute if data entity @s item.components."minecraft:potion_contents" run tag @s add dc_potionArrow
tag @s[nbt={pickup:1b}] add dc_playerArrow

scoreboard players reset #IsStray dc_value
execute on origin if entity @s[type=stray] run scoreboard players set #IsStray dc_value 1
execute unless score #IsStray dc_value matches 1 run function dc_arrow_salvage:not_stray
execute if score #IsStray dc_value matches 1 run function dc_arrow_salvage:stray

# Ensure it can be picked up
data modify entity @s[tag=!dc_playerArrow,tag=!dc_brokenArrow] pickup set value 1b