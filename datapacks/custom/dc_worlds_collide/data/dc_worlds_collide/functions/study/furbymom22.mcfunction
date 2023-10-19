# Meow
scoreboard players set #RandomMax dc_value 3
function drakoncore:api/random_max
execute if score #RandomMax dc_value matches 0 run playsound minecraft:entity.cat.ambient player @a ~ ~ ~ 1 0
execute unless score #RandomMax dc_value matches 0 run playsound minecraft:entity.cat.ambient player @a ~ ~ ~ 1 1

# Torches Placed
execute if score @s dc_torchesPlaced matches 0.. run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Torches Placed","color":"gray"},{"text":": ","color":"dark_gray"},{"score":{"name":"@s","objective":"dc_torchesPlaced"}}]