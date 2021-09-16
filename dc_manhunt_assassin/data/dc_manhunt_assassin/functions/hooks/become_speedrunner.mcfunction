clear @s
item replace entity @s armor.head with minecraft:leather_helmet{display:{Name:'{"text":"Assassin\'s Hood","color":"red","italic":false}',color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}
item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Assassin\'s Robes","color":"red","italic":false}',color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}
item replace entity @s armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"Assassin\'s Leggings","color":"red","italic":false}',color:13710388},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}
item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Assassin\'s Boots","color":"red","italic":false}',color:2171169},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:feather_falling",lvl:4s},{id:"minecraft:depth_strider",lvl:3s}]}
function dc_hidden_blade:give
give @s minecraft:crossbow{display:{Name:'{"text":"Assassin\'s Crossbow","color":"red","italic":false}'},Enchantments:[{id:"minecraft:piercing",lvl:2s}],Unbreakable:1b}
loot give @s loot dc_manhunt_assassin:assassin_cache
give @s minecraft:barrel{display:{Name:'{"text":"Assassin Cache","color":"red","italic":false}'},BlockEntityTag:{LootTable:"dc_manhunt_assassin:assassin_cache"}} 4
give @s minecraft:red_wool 4