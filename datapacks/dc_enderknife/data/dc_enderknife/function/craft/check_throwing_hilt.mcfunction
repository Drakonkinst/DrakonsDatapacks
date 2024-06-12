execute store result score #KnowledgeBooks dc_value run clear @s knowledge_book 0
execute if score #KnowledgeBooks dc_value matches 1.. run function dc_enderknife:craft/throwing_hilt
advancement revoke @s only dc_enderknife:craft_throwing_hilt