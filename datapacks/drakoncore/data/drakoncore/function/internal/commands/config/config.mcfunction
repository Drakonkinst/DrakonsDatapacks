execute if entity @s[tag=dc_admin] run function drakoncore:internal/commands/config/do_config
execute if score @s[tag=!dc_admin] config matches 1.. run tellraw @s {"text":"You must be an admin to run this command!","color":"red"}
scoreboard players set @s config 0
scoreboard players enable @s config