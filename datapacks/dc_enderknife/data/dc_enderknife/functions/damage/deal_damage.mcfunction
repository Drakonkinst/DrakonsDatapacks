# Deal damage equal to the sword's BASE damage, without enchantments
# Both easier to calculate and nerfs the ranged attack compared to the melee attack.
# We may want to change this in the future.

# Damage is currently the same for both initial throw and recall.

# Wooden = 7
execute if data storage dc_enderknife:sword_data FlyingSword{id:"minecraft:wooden_sword"} run damage @s 7 dc_enderknife:throwing_sword by @a[tag=dc_currentSwordThrower,limit=1]

# Golden = 7
execute if data storage dc_enderknife:sword_data FlyingSword{id:"minecraft:golden_sword"} run damage @s 7 dc_enderknife:throwing_sword by @a[tag=dc_currentSwordThrower,limit=1]

# Stone = 9
execute if data storage dc_enderknife:sword_data FlyingSword{id:"minecraft:stone_sword"} run damage @s 9 dc_enderknife:throwing_sword by @a[tag=dc_currentSwordThrower,limit=1]

# Iron = 9
execute if data storage dc_enderknife:sword_data FlyingSword{id:"minecraft:iron_sword"} run damage @s 9 dc_enderknife:throwing_sword by @a[tag=dc_currentSwordThrower,limit=1]

# Diamond = 9
execute if data storage dc_enderknife:sword_data FlyingSword{id:"minecraft:diamond_sword"} run damage @s 9 dc_enderknife:throwing_sword by @a[tag=dc_currentSwordThrower,limit=1]

# Netherite = 10
execute if data storage dc_enderknife:sword_data FlyingSword{id:"minecraft:netherite_sword"} run damage @s 10 dc_enderknife:throwing_sword by @a[tag=dc_currentSwordThrower,limit=1]