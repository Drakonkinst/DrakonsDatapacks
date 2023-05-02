# Sets #Random to a value in the range [0, #RandomMax) (exclusive)
# where #RandomMax is a positive integer
function drakoncore:api/random
scoreboard players operation #Random dc_value %= #RandomMax dc_value