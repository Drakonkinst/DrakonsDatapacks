execute if score @s manhunt matches 1 run function dc_manhunt_compass:roles/display_menu
execute if score @s manhunt matches 2 run function dc_manhunt_compass:roles/become_speedrunner
execute if score @s manhunt matches 3 run function dc_manhunt_compass:roles/become_hunter
execute if score @s manhunt matches 4 run function dc_manhunt_compass:roles/reset_role
scoreboard players set @s manhunt 0
scoreboard players enable @s manhunt