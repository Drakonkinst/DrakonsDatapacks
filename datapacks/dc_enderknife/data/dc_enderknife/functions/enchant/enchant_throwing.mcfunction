# Remove 1 item from stack
execute as @e[type=item,tag=dc_throwingHilt,limit=1] run function drakoncore:api/remove_1_from_item_entity

# Add enchantment
execute if entity @s[type=item_display] run function dc_enderknife:enchant/enchant_throwing_embed
execute if entity @s[type=item] run function dc_enderknife:enchant/enchant_throwing_item

# Remove xp & play effects
experience add @a[tag=dc_anvilCrafting,limit=1,gamemode=!creative] -10 levels
function drakoncore:api/anvil_success
playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1 1
playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1 0.25
particle minecraft:enchant ~ ~1 ~ 0 0 0 1 50