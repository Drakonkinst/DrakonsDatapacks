tellraw @s {"text":"Life rushes back into you as you revive from the grave!","color":"green"}
execute at @e[type=armor_stand,tag=dc_locatedGrave,limit=1] positioned ~ ~1.39 ~ run tp @s ~ ~ ~

# Update new position and play effects there
execute at @s run function dc_player_revive:revive_effects