function dc_item_magnet:give
clear @s minecraft:knowledge_book 1
execute store result score #KnowledgeBooks dc_value run clear @s knowledge_book 0
execute if score #KnowledgeBooks dc_value matches 1.. run function dc_item_magnet:craft_item