execute store result score #Random dc_value run random value 1..10
tellraw @s ""
execute if score #Random dc_value matches 1 run tellraw @s {"text":"...What a strange world this is...","color":"red","italic":true}
execute if score #Random dc_value matches 2 run tellraw @s {"text":"...I'm glad you're with me...","color":"red","italic":true}
execute if score #Random dc_value matches 3 run tellraw @s {"text":"...Are we going to sleep soon?...","color":"red","italic":true}
execute if score #Random dc_value matches 4 run tellraw @s {"text":"...How can I be hungry without a stomach?...","color":"red","italic":true}
execute if score #Random dc_value matches 5 run tellraw @s {"text":"...Have you seen Vasher lately?...","color":"red","italic":true}
execute if score #Random dc_value matches 6 run tellraw @s {"text":"...Mmm...","color":"red","italic":true}
execute if score #Random dc_value matches 7 run tellraw @s {"text":"...How did I get here?...","color":"red","italic":true}
execute if score #Random dc_value matches 8 run tellraw @s {"text":"...A person knows when they're in darkness, even when they can't see...","color":"red","italic":true}
execute if score #Random dc_value matches 9 run tellraw @s {"text":"...Are we going to destroy evil today?...","color":"red","italic":true}
execute if score #Random dc_value matches 10 run tellraw @s {"text":"...You could be using me more often...","color":"red","italic":true}
playsound minecraft:entity.blaze.ambient player @s ~ ~ ~ 1 0