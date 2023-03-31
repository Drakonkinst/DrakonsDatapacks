# Runs once per second on each entity
execute if predicate dc_armor_stand:is_hand_upgrade if entity @s[tag=!dc_onGround] run function dc_armor_stand:attempt_add_hands