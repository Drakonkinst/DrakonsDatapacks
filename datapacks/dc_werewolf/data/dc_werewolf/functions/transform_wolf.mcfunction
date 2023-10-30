tag @s add dc_werewolfTransformed
playsound minecraft:entity.wolf.ambient player @a ~ ~ ~ 1 0.8
effect give @s speed 7 0 true
execute if data entity @s SelectedItem if predicate dc_werewolf:holding_bones run function dc_werewolf:clear_bones