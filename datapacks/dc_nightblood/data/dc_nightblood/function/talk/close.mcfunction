execute store result score #Random dc_value run random value 1..10
tellraw @s ""
execute if score #Random dc_value matches 1 run tellraw @s {"text":"...Hello! Would you like to destroy some evil today?...","color":"red","italic":true}
execute if score #Random dc_value matches 2 run tellraw @s {"text":"...I can be very useful...","color":"red","italic":true}
execute if score #Random dc_value matches 3 run tellraw @s {"text":"...Come on, pick me up...","color":"red","italic":true}
execute if score #Random dc_value matches 4 run tellraw @s {"text":"...You found me...","color":"red","italic":true}
execute if score #Random dc_value matches 5 run tellraw @s {"text":"...You don't seem too bad...","color":"red","italic":true}
execute if score #Random dc_value matches 6 run tellraw @s {"text":"...Trust me...","color":"red","italic":true}
execute if score #Random dc_value matches 7 run tellraw @s {"text":"...Let's destroy some evil...together...","color":"red","italic":true}
execute if score #Random dc_value matches 8 run tellraw @s {"text":"...Hello there...","color":"red","italic":true}
execute if score #Random dc_value matches 9 run tellraw @s {"text":"...You seem strong enough...","color":"red","italic":true}
execute if score #Random dc_value matches 10 run tellraw @s {"text":"...There you are...","color":"red","italic":true}