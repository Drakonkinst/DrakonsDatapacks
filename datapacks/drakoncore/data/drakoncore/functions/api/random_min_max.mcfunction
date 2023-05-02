# Sets #Random to a value in the range [#RandomMin, #RandomMax] (inclusive!)
# where #RandomMin and #RandomMax are nonnegative and #RandomMin <= #RandomMax
# WILL MODIFY #RandomMax
function drakoncore:api/random
scoreboard players operation #RandomMax dc_value -= #RandomMin dc_value
scoreboard players add #RandomMax dc_value 1
scoreboard players operation #Random dc_value %= #RandomMax dc_value
scoreboard players operation #Random dc_value += #RandomMin dc_value