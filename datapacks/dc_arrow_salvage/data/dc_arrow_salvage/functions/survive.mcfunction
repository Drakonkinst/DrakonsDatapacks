data modify entity @s[tag=!dc_playerArrow] pickup set value 1b
data modify entity @s[tag=dc_strayArrow, tag=!dc_potionArrow] Potion set value "minecraft:slowness"
execute unless data entity @s CustomPotionEffects run data modify entity @s[tag=!dc_potionArrow] Color set value -1