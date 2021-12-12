execute if entity @p[tag=dc_witch,distance=..5] run kill @s[type=item]
playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1 2
execute as @p[tag=dc_witch,distance=..5] run function dc_witch:give_spellbook