execute store result score #KnowledgeBooks dc_value run clear @s knowledge_book 0
execute if score #KnowledgeBooks dc_value matches 1.. run function dc_throwable_axes:craft/throwing_grip
advancement revoke @s only dc_throwable_axes:craft_throwing_grip