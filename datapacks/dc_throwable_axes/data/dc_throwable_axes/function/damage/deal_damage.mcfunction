# Deal damage equal to the axe's BASE damage, without enchantments
# Both easier to calculate and nerfs the ranged attack compared to the melee attack.
# We may want to change this in the future.

# Damage is currently the same for both initial throw and recall.

# Wooden = 7
execute if data storage dc_throwable_axes:axe_data FlyingAxe{id:"minecraft:wooden_axe"} run damage @s 7 dc_throwable_axes:throwing_axe by @a[tag=dc_currentAxeThrower,limit=1]

# Golden = 7
execute if data storage dc_throwable_axes:axe_data FlyingAxe{id:"minecraft:golden_axe"} run damage @s 7 dc_throwable_axes:throwing_axe by @a[tag=dc_currentAxeThrower,limit=1]

# Stone = 9
execute if data storage dc_throwable_axes:axe_data FlyingAxe{id:"minecraft:stone_axe"} run damage @s 9 dc_throwable_axes:throwing_axe by @a[tag=dc_currentAxeThrower,limit=1]

# Iron = 9
execute if data storage dc_throwable_axes:axe_data FlyingAxe{id:"minecraft:iron_axe"} run damage @s 9 dc_throwable_axes:throwing_axe by @a[tag=dc_currentAxeThrower,limit=1]

# Diamond = 9
execute if data storage dc_throwable_axes:axe_data FlyingAxe{id:"minecraft:diamond_axe"} run damage @s 9 dc_throwable_axes:throwing_axe by @a[tag=dc_currentAxeThrower,limit=1]

# Netherite = 10
execute if data storage dc_throwable_axes:axe_data FlyingAxe{id:"minecraft:netherite_axe"} run damage @s 10 dc_throwable_axes:throwing_axe by @a[tag=dc_currentAxeThrower,limit=1]