scoreboard players set #RandomMin dc_value 1
scoreboard players set #RandomMax dc_value 10
function drakoncore:api/random_min_max
tellraw @s ""
execute if score @s dc_value matches 1 run tellraw @s {"text":"...NO...WANT MORE...","color":"dark_red","italic":true,"bold":true}
execute if score @s dc_value matches 2 run tellraw @s {"text":"...MORE...","color":"dark_red","italic":true,"bold":true}
execute if score @s dc_value matches 3 run tellraw @s {"text":"...NO...","color":"dark_red","italic":true,"bold":true}
execute if score @s dc_value matches 4 run tellraw @s {"text":"...MUST...DESTROY...","color":"dark_red","italic":true,"bold":true}
execute if score @s dc_value matches 5 run tellraw @s {"text":"...WANT MORE...","color":"dark_red","italic":true,"bold":true}
execute if score @s dc_value matches 6 run tellraw @s {"text":"...NOT ENOUGH...","color":"dark_red","italic":true,"bold":true}
execute if score @s dc_value matches 7 run tellraw @s {"text":"...NOT AGAIN...","color":"dark_red","italic":true,"bold":true}
execute if score @s dc_value matches 8 run tellraw @s {"text":"...KILL...","color":"dark_red","italic":true,"bold":true}
execute if score @s dc_value matches 9 run tellraw @s {"text":"...DESTROY...","color":"dark_red","italic":true,"bold":true}
execute if score @s dc_value matches 10 run tellraw @s {"text":"...STOP...","color":"dark_red","italic":true,"bold":true}