# Deal damage equal to the sword's BASE damage, without enchantments
# Both easier to calculate and nerfs the ranged attack compared to the melee attack.
# We may want to change this in the future.

# Wooden = 4
execute if data storage dc_enderknife:sword_data FlyingSword{id:"minecraft:wooden_sword"} run damage @s 4 dc_enderknife:throwing_sword by @a[tag=dc_currentSwordThrower,limit=1]

# Golden = 4
execute if data storage dc_enderknife:sword_data FlyingSword{id:"minecraft:golden_sword"} run damage @s 4 dc_enderknife:throwing_sword by @a[tag=dc_currentSwordThrower,limit=1]

# Stone = 5
execute if data storage dc_enderknife:sword_data FlyingSword{id:"minecraft:stone_sword"} run damage @s 5 dc_enderknife:throwing_sword by @a[tag=dc_currentSwordThrower,limit=1]

# Iron = 6
execute if data storage dc_enderknife:sword_data FlyingSword{id:"minecraft:iron_sword"} run damage @s 6 dc_enderknife:throwing_sword by @a[tag=dc_currentSwordThrower,limit=1]

# Diamond = 7
execute if data storage dc_enderknife:sword_data FlyingSword{id:"minecraft:diamond_sword"} run damage @s 7 dc_enderknife:throwing_sword by @a[tag=dc_currentSwordThrower,limit=1]

# Netherite = 8
execute if data storage dc_enderknife:sword_data FlyingSword{id:"minecraft:netherite_sword"} run damage @s 8 dc_enderknife:throwing_sword by @a[tag=dc_currentSwordThrower,limit=1]