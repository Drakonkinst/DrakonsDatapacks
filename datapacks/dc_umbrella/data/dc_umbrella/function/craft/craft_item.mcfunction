function dc_umbrella:give
clear @s minecraft:knowledge_book 1
execute store result score #KnowledgeBooks dc_value run clear @s knowledge_book 0
execute unless score #KnowledgeBooks dc_value matches 1.. run function dc_umbrella:change_model_color
execute if score #KnowledgeBooks dc_value matches 1.. run function dc_umbrella:craft/craft_item