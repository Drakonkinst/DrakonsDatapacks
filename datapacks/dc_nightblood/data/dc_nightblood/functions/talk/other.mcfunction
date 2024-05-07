execute store result score #Random dc_value run random value 1..10
tellraw @s ""
execute if score #Random dc_value matches 1 run tellraw @s {"text":"...Hey, it's me! The sword!...","color":"red","italic":true}
execute if score #Random dc_value matches 2 run tellraw @s {"text":"...You aren't evil, are you?...","color":"red","italic":true}
execute if score #Random dc_value matches 3 run tellraw @s {"text":"...Hello!...","color":"red","italic":true}
execute if score #Random dc_value matches 4 run tellraw @s {"text":"...Have you seen any evil today?...","color":"red","italic":true}
execute if score #Random dc_value matches 5 run tellraw @s {"text":"...Mmm...so much evil...","color":"red","italic":true}
execute if score #Random dc_value matches 6 run tellraw @s {"text":"...No one ever talks to me...","color":"red","italic":true}
execute if score #Random dc_value matches 7 run tellraw @s {"text":"...I hear you've met evil before...","color":"red","italic":true}
execute if score #Random dc_value matches 8 run tellraw @s {"text":"...Don't mind me...","color":"red","italic":true}
execute if score #Random dc_value matches 9 run tellraw @s {"text":"...Seen any evil lately?...","color":"red","italic":true}
execute if score #Random dc_value matches 10 run tellraw @s {"text":"...Anyone there?...","color":"red","italic":true}
playsound minecraft:entity.blaze.ambient player @s ~ ~ ~ 1 0