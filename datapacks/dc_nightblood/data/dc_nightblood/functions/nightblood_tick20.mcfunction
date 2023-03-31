execute unless predicate drakoncore:is_sneaking run tag @s remove dc_nbLockout
execute if entity @s[tag=!dc_nbActive] run function dc_nightblood:sheathed/tick20
execute if entity @s[tag=dc_nbActive] run function dc_nightblood:unsheathed/tick20
tag @s remove dc_nbCurse
tag @s add dc_holdingNb