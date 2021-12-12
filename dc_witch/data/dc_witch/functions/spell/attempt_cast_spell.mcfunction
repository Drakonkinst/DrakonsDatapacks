execute unless score @s dc_witchCooldown matches 0 run function dc_witch:spell/fail_on_cooldown
execute if score @s dc_witchCooldown matches 0 run function dc_witch:spell/find_spell
scoreboard players reset @s dc_witchCast