execute if entity @s[type=item_display,tag=dc_boatSail] run scoreboard players add #NumSails dc_value 1
#execute if entity @s[type=chest_boat] if data entity @s Items[{Slot:13b,id:"minecraft:end_crystal"}] run scoreboard players add #CanFly dc_value 1
execute on passengers run function dc_boats:controls/check_modules