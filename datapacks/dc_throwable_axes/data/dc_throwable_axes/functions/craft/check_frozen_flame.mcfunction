execute store result score #KnowledgeBooks dc_value run clear @s knowledge_book 0
execute if score #KnowledgeBooks dc_value matches 1.. run function dc_throwable_axes:craft/frozen_flame
advancement revoke @s only dc_throwable_axes:craft_frozen_flame