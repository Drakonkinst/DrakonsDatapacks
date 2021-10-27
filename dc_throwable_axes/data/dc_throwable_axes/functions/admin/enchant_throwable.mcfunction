tag @s add dc_caster
execute as @e[type=#drakoncore:item_frames,distance=..5] run function dc_throwable_axes:item_frame_throwable
execute unless entity @e[type=#drakoncore:item_frames,limit=1,distance=..5] run tellraw @s {"text":"You must put the axe in an item frame within 5 blocks of you!", "color":"red"}
tag @s remove dc_caster