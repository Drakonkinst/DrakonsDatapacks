tellraw @s {"text":"Color applied successfully.","color":"green"}
function dc_umbrella:mark_umbrella
function dc_umbrella:apply_color
function dc_umbrella:unmark_umbrella
playsound minecraft:item.armor.equip_generic player @a

# If not in creative mode, clear item
execute if entity @s[gamemode=!creative] run function dc_umbrella:clear_item