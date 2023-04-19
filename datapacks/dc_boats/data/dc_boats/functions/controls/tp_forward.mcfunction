tp ^ ^ ^0.3
scoreboard players remove #TpTicks dc_value 1
execute if score #TpTicks dc_value matches 1.. positioned ^ ^ ^0.3 run function dc_boats:controls/tp_forward
