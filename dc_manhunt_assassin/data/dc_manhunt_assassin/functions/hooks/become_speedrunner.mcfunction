clear @s
function dc_hidden_blade:give
give @s minecraft:crossbow{display:{Name:'{"text":"Assassin\'s Crossbow","color":"red","italic":false}'},Enchantments:[{id:"minecraft:piercing",lvl:2s}],Unbreakable:1b}
loot give @s loot dc_manhunt_assassin:assassin_cache
give @s minecraft:barrel{display:{Name:'{"text":"Assassin Cache","color":"red","italic":false}'},BlockEntityTag:{LootTable:"dc_manhunt_assassin:assassin_cache"}} 4
give @s minecraft:red_wool 4

# Adds status effects and equips armor
clear @s #dc_manhunt_assassin:assassin_armor_types
function dc_manhunt_assassin:start_assassin_aura