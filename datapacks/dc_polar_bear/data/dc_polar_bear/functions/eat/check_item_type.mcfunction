scoreboard players reset #LikesToEat dc_value
data modify entity @s HandItems[0] set from storage dc_polar_bear:item Item
execute if predicate dc_polar_bear:likes_to_eat run scoreboard players set #LikesToEat dc_value 1