tag @s add dc_hasGrave
scoreboard players set @s dc_reviveTick 0

tellraw @s ["",{"text":"You have died, but ","color":"dark_aqua"},{"text":"don't press Respawn yet","bold":true,"color":"dark_aqua"},{"text":" - other players can still revive you if they reach your death location!","color":"dark_aqua"}]

# Initialize grave with the same ID
tag @s add dc_spawningGrave
execute summon armor_stand run function dc_player_revive:setup_grave
tag @s remove dc_spawningGrave