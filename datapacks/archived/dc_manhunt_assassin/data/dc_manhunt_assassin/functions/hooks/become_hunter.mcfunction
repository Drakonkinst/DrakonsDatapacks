clear @s
item replace entity @s armor.head with minecraft:chainmail_helmet{display:{Name:'{"text":"Guard\'s Helm","italic":false}'},Unbreakable:1b}
item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Guard\'s Boots","italic":false}',color:2171169},Unbreakable:1b}
give @s minecraft:iron_sword{display:{Name:'{"text":"Guard\'s Shortsword","italic":false}'},Unbreakable:1b}
give @s minecraft:crossbow{display:{Name:'{"text":"Guard\'s Crossbow","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:2s}]}
give @s minecraft:bread 64
give @s minecraft:arrow 64

title @s title {"text":"You are a Guard.", "color":"red"}
execute unless entity @a[tag=dc_speedrunner,limit=1] run title @s subtitle {"text":"Objective: Kill the Assassin","color":"yellow"}
execute if entity @a[tag=dc_speedrunner,limit=1] run title @s subtitle ["",{"text":"Objective: Kill ","color":"yellow"},{"selector":"@a[tag=dc_speedrunner,limit=1]","color":"yellow"}]
title @s actionbar {"text":"Defeat the Assassin 3 times to win","color":"red","bold":true}
tag @s add dc_introduced