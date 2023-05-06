scoreboard players set #RandomMin dc_value 1
scoreboard players set #RandomMax dc_value 10
function drakoncore:api/random_min_max
tellraw @s ""
execute if score #Random dc_value matches 1 run tellraw @s {"text":"...SO...MUCH...EVIL...","color":"dark_red","italic":true,"bold":true}
execute if score #Random dc_value matches 2 run tellraw @s {"text":"...DESTROY...","color":"dark_red","italic":true,"bold":true}
execute if score #Random dc_value matches 3 run tellraw @s {"text":"...EVIL...","color":"dark_red","italic":true,"bold":true}
execute if score #Random dc_value matches 4 run tellraw @s {"text":"...KILL...","color":"dark_red","italic":true,"bold":true}
execute if score #Random dc_value matches 5 run tellraw @s {"text":"...DESTROY THEM...","color":"dark_red","italic":true,"bold":true}
execute if score #Random dc_value matches 6 run tellraw @s {"text":"...DESTROY...EVIL...","color":"dark_red","italic":true,"bold":true}
execute if score #Random dc_value matches 7 run tellraw @s {"text":"...YES...","color":"dark_red","italic":true,"bold":true}
execute if score #Random dc_value matches 8 run tellraw @s {"text":"...MORE...","color":"dark_red","italic":true,"bold":true}
execute if score #Random dc_value matches 9 run tellraw @s {"text":"...HUNGRY...","color":"dark_red","italic":true,"bold":true}
execute if score #Random dc_value matches 10 run tellraw @s {"text":"...DEATH...","color":"dark_red","italic":true,"bold":true}
playsound minecraft:entity.wither.ambient player @s ~ ~ ~ 1 1
playsound minecraft:entity.blaze.ambient player @s ~ ~ ~ 1 0