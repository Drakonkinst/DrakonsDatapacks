execute as @a store result score @s dc_temp_id run data get entity @s UUID[0]
execute as @a if score @s dc_temp_id = #AxeThrower dc_temp_id run tag @s add dc_currentAxeThrower