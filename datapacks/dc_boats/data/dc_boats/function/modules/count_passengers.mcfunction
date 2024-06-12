execute if entity @s[type=boat] run scoreboard players set #SlotsAvailable dc_value 2
execute if entity @s[type=chest_boat] run scoreboard players set #SlotsAvailable dc_value 1
execute on passengers run scoreboard players remove #SlotsAvailable dc_value 1
scoreboard players operation @s dc_value = #SlotsAvailable dc_value