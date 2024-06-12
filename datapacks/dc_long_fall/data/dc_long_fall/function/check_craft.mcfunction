execute store result score #KnowledgeBooks dc_value run clear @s knowledge_book 0
execute if score #KnowledgeBooks dc_value matches 1.. run function dc_long_fall:craft_item
advancement revoke @s only dc_long_fall:craft_item