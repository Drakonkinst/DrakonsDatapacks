function dc_umbrella:change_model_color

playsound minecraft:item.armor.equip_generic player @a
tellraw @s {"text":"Color applied successfully.","color":"green"}

# If not in creative mode, clear item
execute if entity @s[gamemode=!creative] run function dc_umbrella:clear_item