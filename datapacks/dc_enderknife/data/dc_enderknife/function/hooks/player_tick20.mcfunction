# Runs once per second on each player
execute if predicate dc_enderknife:blinking_mainhand run function dc_enderknife:blinking/check_charge
execute if predicate dc_enderknife:blinking_offhand run function dc_enderknife:blinking/display_charges