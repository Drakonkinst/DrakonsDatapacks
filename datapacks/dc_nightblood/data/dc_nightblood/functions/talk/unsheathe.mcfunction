scoreboard players set #RandomMin dc_value 1
scoreboard players set #RandomMax dc_value 10
function drakoncore:api/random_min_max
tellraw @s ""
execute if score @s dc_value matches 1 run tellraw @s {"text":"...Finally...","color":"red","italic":true}
execute if score @s dc_value matches 2 run tellraw @s {"text":"...Yes...","color":"red","italic":true}
execute if score @s dc_value matches 3 run tellraw @s {"text":"...At last...","color":"red","italic":true}
execute if score @s dc_value matches 4 run tellraw @s {"text":"...It's time...","color":"red","italic":true}
execute if score @s dc_value matches 5 run tellraw @s {"text":"...It's been too long...","color":"red","italic":true}
execute if score @s dc_value matches 6 run tellraw @s {"text":"...I'll take it from here...","color":"red","italic":true}
execute if score @s dc_value matches 7 run tellraw @s {"text":"...Let me do this...","color":"red","italic":true}
execute if score @s dc_value matches 8 run tellraw @s {"text":"...You won't regret this...","color":"red","italic":true}
execute if score @s dc_value matches 9 run tellraw @s {"text":"...Let me out...","color":"red","italic":true}
execute if score @s dc_value matches 10 run tellraw @s {"text":"...Time to go to work...","color":"red","italic":true}