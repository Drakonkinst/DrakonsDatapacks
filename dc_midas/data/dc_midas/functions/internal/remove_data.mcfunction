# If Enchanted Golden Apple, give some xp back
execute if predicate dc_midas:holding/exactly/enchanted_golden_apple at @e[tag=dc_midasAnchor,limit=1] run function dc_midas:enchant/start_xp_return

execute if data entity @s HandItems[0].tag.Damage run function dc_midas:durability/set_gold_a
execute if data entity @s HandItems[0].tag.MidasTouch run tag @e[tag=dc_midasAnchor,limit=1] add dc_midasHealed
data modify entity @s HandItems[0].id set from entity @s HandItems[0].tag.MidasOldItem
execute if data entity @s HandItems[0].tag.Damage run function dc_midas:durability/set_b
execute if data entity @s HandItems[0].tag.Damage if score #MAX_A dc_value matches 1.. if score #MAX_B dc_value matches 1.. run function dc_midas:durability/modify_damage

# Old damage implementation
#execute if data entity @s HandItems[0].tag.MidasOldDamage run data modify entity @s HandItems[0].tag.Damage set from entity @s HandItems[0].tag.MidasOldDamage
#data remove entity @s HandItems[0].tag.MidasOldDamage

data remove entity @s HandItems[0].tag.MidasOldItem
data remove entity @s HandItems[0].tag.MidasTouch

# Check if tag:{} is empty to make sure weird stacking doesn't happen
# Thank you https://www.reddit.com/r/MinecraftCommands/comments/mvdzsq/help_with_removing_empty_nbt_tags/gvbc306/
execute store success score #SUCCESS dc_value run data modify entity @s HandItems[0].tag set value {}
execute if score #SUCCESS dc_value matches 0 run data remove entity @s HandItems[0].tag