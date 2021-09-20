execute if entity @s[tag=dc_admin] run function drakoncore:commands/config/do_config
tellraw @s[tag=!dc_admin,scores={config=1..}] {"text":"You must be an admin to run this command!","color":"red"}
scoreboard players set @s config 0
scoreboard players enable @s config