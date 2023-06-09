function dc_throwable_axes:give/frozen_flame
clear @s minecraft:knowledge_book 1
execute store result score #KnowledgeBooks dc_value run clear @s knowledge_book 0
execute if score #KnowledgeBooks dc_value matches 1.. run function dc_throwable_axes:craft/frozen_flame