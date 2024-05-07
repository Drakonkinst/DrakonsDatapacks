execute store result score #Random dc_value run random value 1..10
tellraw @s ""
execute if score #Random dc_value matches 1 run tellraw @s {"text":"...I'm right here...","color":"red","italic":true}
execute if score #Random dc_value matches 2 run tellraw @s {"text":"...Just a little further...","color":"red","italic":true}
execute if score #Random dc_value matches 3 run tellraw @s {"text":"...Yes, this way...","color":"red","italic":true}
execute if score #Random dc_value matches 4 run tellraw @s {"text":"...I can see you...","color":"red","italic":true}
execute if score #Random dc_value matches 5 run tellraw @s {"text":"...You're getting closer...","color":"red","italic":true}
execute if score #Random dc_value matches 6 run tellraw @s {"text":"...You can trust me...","color":"red","italic":true}
execute if score #Random dc_value matches 7 run tellraw @s {"text":"...Come here...","color":"red","italic":true}
execute if score #Random dc_value matches 8 run tellraw @s {"text":"...Don't be afraid...","color":"red","italic":true}
execute if score #Random dc_value matches 9 run tellraw @s {"text":"...Quickly...","color":"red","italic":true}
execute if score #Random dc_value matches 10 run tellraw @s {"text":"...So close...","color":"red","italic":true}