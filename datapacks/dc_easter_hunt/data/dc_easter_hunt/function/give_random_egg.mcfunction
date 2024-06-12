execute unless entity @s[tag=dc_receivedEgg] if predicate dc_easter_hunt:chance_rare run function dc_easter_hunt:spawn_rare_egg
execute unless entity @s[tag=dc_receivedEgg] if predicate dc_easter_hunt:chance_uncommon run function dc_easter_hunt:spawn_uncommon_egg
execute unless entity @s[tag=dc_receivedEgg] run function dc_easter_hunt:spawn_common_egg
tag @s remove dc_receivedEgg