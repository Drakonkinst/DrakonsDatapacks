execute if predicate dc_throwable_axes:has_unbreaking_1 if predicate dc_throwable_axes:unbreaking_1_chance run scoreboard players add @s dc_weaponDamage 1
execute if predicate dc_throwable_axes:has_unbreaking_2 if predicate dc_throwable_axes:unbreaking_2_chance run scoreboard players add @s dc_weaponDamage 1
execute if predicate dc_throwable_axes:has_unbreaking_3 if predicate dc_throwable_axes:unbreaking_3_chance run scoreboard players add @s dc_weaponDamage 1
execute unless predicate dc_throwable_axes:has_unbreaking_1 unless predicate dc_throwable_axes:has_unbreaking_2 unless predicate dc_throwable_axes:has_unbreaking_3 run scoreboard players add @s dc_weaponDamage 1