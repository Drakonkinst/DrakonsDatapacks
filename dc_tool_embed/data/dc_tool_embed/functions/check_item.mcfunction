# There's no way to check item by item tag so...
# I hate you, Minecraft
execute if entity @s[nbt={Item:{id:"minecraft:diamond_axe"}}] run function dc_tool_embed:embed_axe
execute if entity @s[nbt={Item:{id:"minecraft:stone_axe"}}] run function dc_tool_embed:embed_axe
execute if entity @s[nbt={Item:{id:"minecraft:wooden_axe"}}] run function dc_tool_embed:embed_axe
execute if entity @s[nbt={Item:{id:"minecraft:golden_axe"}}] run function dc_tool_embed:embed_axe
execute if entity @s[nbt={Item:{id:"minecraft:iron_axe"}}] run function dc_tool_embed:embed_axe
execute if entity @s[nbt={Item:{id:"minecraft:netherite_axe"}}] run function dc_tool_embed:embed_axe

execute if entity @s[nbt={Item:{id:"minecraft:diamond_sword"}}] run function dc_tool_embed:embed_sword
execute if entity @s[nbt={Item:{id:"minecraft:stone_sword"}}] run function dc_tool_embed:embed_sword
execute if entity @s[nbt={Item:{id:"minecraft:wooden_sword"}}] run function dc_tool_embed:embed_sword
execute if entity @s[nbt={Item:{id:"minecraft:golden_sword"}}] run function dc_tool_embed:embed_sword
execute if entity @s[nbt={Item:{id:"minecraft:iron_sword"}}] run function dc_tool_embed:embed_sword
execute if entity @s[nbt={Item:{id:"minecraft:netherite_sword"}}] run function dc_tool_embed:embed_sword

execute if entity @s[nbt={Item:{id:"minecraft:diamond_shovel"}}] run function dc_tool_embed:embed_shovel
execute if entity @s[nbt={Item:{id:"minecraft:stone_shovel"}}] run function dc_tool_embed:embed_shovel
execute if entity @s[nbt={Item:{id:"minecraft:wooden_shovel"}}] run function dc_tool_embed:embed_shovel
execute if entity @s[nbt={Item:{id:"minecraft:golden_shovel"}}] run function dc_tool_embed:embed_shovel
execute if entity @s[nbt={Item:{id:"minecraft:iron_shovel"}}] run function dc_tool_embed:embed_shovel
execute if entity @s[nbt={Item:{id:"minecraft:netherite_shovel"}}] run function dc_tool_embed:embed_shovel

execute if entity @s[nbt={Item:{id:"minecraft:diamond_hoe"}}] run function dc_tool_embed:embed_hoe
execute if entity @s[nbt={Item:{id:"minecraft:stone_hoe"}}] run function dc_tool_embed:embed_hoe
execute if entity @s[nbt={Item:{id:"minecraft:wooden_hoe"}}] run function dc_tool_embed:embed_hoe
execute if entity @s[nbt={Item:{id:"minecraft:golden_hoe"}}] run function dc_tool_embed:embed_hoe
execute if entity @s[nbt={Item:{id:"minecraft:iron_hoe"}}] run function dc_tool_embed:embed_hoe
execute if entity @s[nbt={Item:{id:"minecraft:netherite_hoe"}}] run function dc_tool_embed:embed_hoe

execute if entity @s[nbt={Item:{id:"minecraft:diamond_pickaxe"}}] run function dc_tool_embed:embed_pickaxe
execute if entity @s[nbt={Item:{id:"minecraft:stone_pickaxe"}}] run function dc_tool_embed:embed_pickaxe
execute if entity @s[nbt={Item:{id:"minecraft:wooden_pickaxe"}}] run function dc_tool_embed:embed_pickaxe
execute if entity @s[nbt={Item:{id:"minecraft:golden_pickaxe"}}] run function dc_tool_embed:embed_pickaxe
execute if entity @s[nbt={Item:{id:"minecraft:iron_pickaxe"}}] run function dc_tool_embed:embed_pickaxe
execute if entity @s[nbt={Item:{id:"minecraft:netherite_pickaxe"}}] run function dc_tool_embed:embed_pickaxe

tag @s add dc_te_searched