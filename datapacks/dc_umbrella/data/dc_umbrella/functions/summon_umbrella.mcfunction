scoreboard players operation #UmbrellaColor dc_value = @s dc_selectedUmbrella
execute positioned ~ -64 0 summon armor_stand run function dc_umbrella:model/setup_umbrella
execute positioned ~ -64 0 summon armor_stand run function dc_umbrella:model/setup_stand
playsound minecraft:item.armor.equip_generic player @a