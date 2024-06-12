particle minecraft:crit ~ ~0.2 ~
particle minecraft:crit ~ ~0.6 ~
particle minecraft:crit ~0.5 ~0.2 ~
data modify entity @s Motion set value [0.0d,0.2d,0.0d]

execute unless entity @a[tag=dc_anvilCrafting,limit=1,gamemode=creative] if predicate drakoncore:chance_damage_anvil positioned ~ ~-0.2 ~ run function drakoncore:api/damage_anvil_at_block
execute if block ~ ~-0.2 ~ #minecraft:anvil run playsound minecraft:block.anvil.use block @a ~ ~ ~ 1 1