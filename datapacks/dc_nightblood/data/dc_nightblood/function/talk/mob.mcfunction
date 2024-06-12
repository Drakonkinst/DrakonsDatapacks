execute store result score #Random dc_value run random value 1..10
tellraw @s ""
execute if score #Random dc_value matches 1 run tellraw @s {"text":"...Maybe we should kill them...","color":"red","italic":true}
execute if score #Random dc_value matches 2 run tellraw @s {"text":"...Take me out...","color":"red","italic":true}
execute if score #Random dc_value matches 3 run tellraw @s {"text":"...I smell evil...","color":"red","italic":true}
execute if score #Random dc_value matches 4 run tellraw @s {"text":"...Let me prove myself...","color":"red","italic":true}
execute if score #Random dc_value matches 5 run tellraw @s {"text":"...You never let me have any fun...","color":"red","italic":true}
execute if score #Random dc_value matches 6 run tellraw @s {"text":"...Why not unsheathe me, just in case...","color":"red","italic":true}
execute if score #Random dc_value matches 7 run tellraw @s {"text":"...You should probably kill them, right?...","color":"red","italic":true}
execute if score #Random dc_value matches 8 run tellraw @s {"text":"...They look evil, don't they?...","color":"red","italic":true}
execute if score #Random dc_value matches 9 run tellraw @s {"text":"...Come on, it's been so long...","color":"red","italic":true}
execute if score #Random dc_value matches 10 run tellraw @s {"text":"...It's dark in here...I want out...","color":"red","italic":true}
playsound minecraft:entity.blaze.ambient player @s ~ ~ ~ 1 0