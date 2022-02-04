# Remove 1 item from stack
execute as @e[type=item,tag=dc_throwingGrip,limit=1] run function drakoncore:items/remove_1_item_entity

# Add enchantment
execute if entity @s[type=armor_stand] run item modify entity @s weapon.mainhand dc_throwable_axes:enchant_throwing
execute if entity @s[type=item] run function dc_throwable_axes:enchant/enchant_throwing_item

# Remove xp & play effects
experience add @a[tag=dc_anvilCrafting,limit=1,gamemode=!creative] -10 levels
function drakoncore:items/anvil_crafting/on_success
playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1 1
playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1 0.25
particle minecraft:enchant ~ ~1 ~ 0 0 0 1 50