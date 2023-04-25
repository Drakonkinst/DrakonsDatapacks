scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
scoreboard players operation #UmbrellaColor dc_value = @s dc_selectedUmbrella
execute as @e[type=armor_stand,tag=dc_umbrella] if score @s dc_playerId = #CurrentId dc_playerId run function dc_umbrella:model/apply_color

playsound minecraft:item.armor.equip_generic player @a
tellraw @s {"text":"Color applied successfully.","color":"green"}

# If not in creative mode, clear item
execute if entity @s[gamemode=!creative] run function dc_umbrella:clear_item