execute if entity @s[gamemode=!creative,gamemode=!spectator] if predicate dc_vampire:is_day if predicate drakoncore:under_sky run function drakoncore:items/durability/head/damage
execute if score @s[tag=!dc_inBatfly] dc_bloodLevel matches 1.. run function dc_vampire:lose_1_blood
execute if score @s[tag=dc_inBatfly] dc_bloodLevel matches 1.. run function dc_vampire:lose_12_blood