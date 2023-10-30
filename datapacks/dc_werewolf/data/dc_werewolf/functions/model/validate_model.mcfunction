tag @s add dc_targetWerewolfModel
execute if score #ShouldUseAngryModel dc_value matches 1 if entity @s[tag=dc_werewolfNormalModel] run function dc_werewolf:model/model_clear
execute if score #ShouldUseAngryModel dc_value matches 0 if entity @s[tag=dc_werewolfAngryModel] run function dc_werewolf:model/downgrade_model
execute if score #ShouldUseAngryModel dc_value matches 0 if entity @s[tag=dc_werewolfAngryModel] run playsound minecraft:entity.wolf.pant player @a ~ ~ ~ 1 0.75