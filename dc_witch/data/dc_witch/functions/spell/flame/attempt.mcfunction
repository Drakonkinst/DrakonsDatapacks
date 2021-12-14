execute unless entity @s[level=2..] run function dc_witch:spell/fail_no_mana
execute if entity @s[level=2..] anchored eyes run function dc_witch:spell/flame/init_raycast
execute unless entity @s[tag=dc_cast_success] run function dc_witch:spell/fail_no_space
tag @s remove dc_cast_success