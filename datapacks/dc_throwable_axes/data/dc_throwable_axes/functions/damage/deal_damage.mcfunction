# Deal damage equal to the axe's BASE damage, without enchantments
# Both easier to calculate and nerfs the ranged attack compared to the melee attack.
# We may want to change this in the future.

# Damage is currently the same for both initial throw and recall.

# Wooden = 7
execute if data storage dc_throwable_axes:axe_data FlyingAxe{id:"minecraft:wooden_axe"} run damage @s 7 minecraft:player_attack by @a[tag=dc_currentAxeThrower,limit=1]

# Gold = 7
execute if data storage dc_throwable_axes:axe_data FlyingAxe{id:"minecraft:gold_axe"} run damage @s 7 minecraft:player_attack by @a[tag=dc_currentAxeThrower,limit=1]

# Stone = 9
execute if data storage dc_throwable_axes:axe_data FlyingAxe{id:"minecraft:stone_axe"} run damage @s 9 minecraft:player_attack by @a[tag=dc_currentAxeThrower,limit=1]

# Iron = 9
execute if data storage dc_throwable_axes:axe_data FlyingAxe{id:"minecraft:iron_axe"} run damage @s 9 minecraft:player_attack by @a[tag=dc_currentAxeThrower,limit=1]

# Diamond = 9
execute if data storage dc_throwable_axes:axe_data FlyingAxe{id:"minecraft:diamond_axe"} run damage @s 9 minecraft:player_attack by @a[tag=dc_currentAxeThrower,limit=1]

# Netherite = 10
execute if data storage dc_throwable_axes:axe_data FlyingAxe{id:"minecraft:netherite_axe"} run damage @s 10 minecraft:player_attack by @a[tag=dc_currentAxeThrower,limit=1]