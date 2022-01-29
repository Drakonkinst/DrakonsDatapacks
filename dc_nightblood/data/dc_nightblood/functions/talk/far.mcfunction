function dc_nightblood:talk/random
execute if score @s dc_value matches 1 run tellraw @s {"text":"...Is anyone there?...","color":"red","italic":true}
execute if score @s dc_value matches 2 run tellraw @s {"text":"...Come over here...","color":"red","italic":true}
execute if score @s dc_value matches 3 run tellraw @s {"text":"...Over here...","color":"red","italic":true}
execute if score @s dc_value matches 4 run tellraw @s {"text":"...No, don't leave...","color":"red","italic":true}
execute if score @s dc_value matches 5 run tellraw @s {"text":"...I know you can hear me...","color":"red","italic":true}
execute if score @s dc_value matches 6 run tellraw @s {"text":"...Hey, over here!...","color":"red","italic":true}
execute if score @s dc_value matches 7 run tellraw @s {"text":"...Hello?...","color":"red","italic":true}
execute if score @s dc_value matches 8 run tellraw @s {"text":"...Don't run...","color":"red","italic":true}
execute if score @s dc_value matches 9 run tellraw @s {"text":"...Come closer...","color":"red","italic":true}
execute if score @s dc_value matches 10 run tellraw @s {"text":"...Wait, come back...","color":"red","italic":true}