execute if score @s umbrella matches 1 run function dc_umbrella:display_options

# White
execute if score @s umbrella matches -1 if predicate dc_umbrella:holding_white_dye run scoreboard players set @s dc_selectedUmbrella -1
# Orange
execute if score @s umbrella matches -2 if predicate dc_umbrella:holding_orange_dye run scoreboard players set @s dc_selectedUmbrella -2
# Magenta
execute if score @s umbrella matches -3 if predicate dc_umbrella:holding_magenta_dye run scoreboard players set @s dc_selectedUmbrella -3
# Light Blue
execute if score @s umbrella matches -4 if predicate dc_umbrella:holding_light_blue_dye run scoreboard players set @s dc_selectedUmbrella -4
# Yellow
execute if score @s umbrella matches -5 if predicate dc_umbrella:holding_yellow_dye run scoreboard players set @s dc_selectedUmbrella -5
# Lime
execute if score @s umbrella matches -6 if predicate dc_umbrella:holding_lime_dye run scoreboard players set @s dc_selectedUmbrella -6
# Pink
execute if score @s umbrella matches -7 if predicate dc_umbrella:holding_pink_dye run scoreboard players set @s dc_selectedUmbrella -7
# Gray
execute if score @s umbrella matches -8 if predicate dc_umbrella:holding_gray_dye run scoreboard players set @s dc_selectedUmbrella -8
# Light Gray
execute if score @s umbrella matches -9 if predicate dc_umbrella:holding_light_gray_dye run scoreboard players set @s dc_selectedUmbrella -9
# Cyan
execute if score @s umbrella matches -10 if predicate dc_umbrella:holding_cyan_dye run scoreboard players set @s dc_selectedUmbrella -10
# Purple
execute if score @s umbrella matches -11 if predicate dc_umbrella:holding_purple_dye run scoreboard players set @s dc_selectedUmbrella -11
# Blue
execute if score @s umbrella matches -12 if predicate dc_umbrella:holding_blue_dye run scoreboard players set @s dc_selectedUmbrella -12
# Brown
execute if score @s umbrella matches -13 if predicate dc_umbrella:holding_brown_dye run scoreboard players set @s dc_selectedUmbrella -13
# Green
execute if score @s umbrella matches -14 if predicate dc_umbrella:holding_green_dye run scoreboard players set @s dc_selectedUmbrella -14
# Red
execute if score @s umbrella matches -15 if predicate dc_umbrella:holding_red_dye run scoreboard players set @s dc_selectedUmbrella -15
# Black
execute if score @s umbrella matches -16 if predicate dc_umbrella:holding_black_dye run scoreboard players set @s dc_selectedUmbrella -16

# Creative Mode Cheats
execute if score @s umbrella matches -16..-1 if entity @s[gamemode=creative] run scoreboard players operation @s dc_selectedUmbrella = @s umbrella

# Confirmation message
execute if score @s umbrella matches -16..-1 if score @s umbrella = @s dc_selectedUmbrella run function dc_umbrella:on_color_change
execute if score @s umbrella matches -16..-1 unless score @s umbrella = @s dc_selectedUmbrella run tellraw @s {"text":"You must be holding the correct dye in your mainhand!","color":"red"}

# Default to white
execute unless score @s dc_selectedUmbrella matches ..0 run scoreboard players set @s dc_selectedUmbrella -1

# Reset
scoreboard players set @s umbrella 0
scoreboard players enable @s umbrella