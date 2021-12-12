execute unless entity @s[level=2..] run function dc_witch:spell/fail_no_mana
execute if entity @s[level=2..] anchored eyes positioned ^ ^ ^2 run function dc_witch:spell/flame/cast