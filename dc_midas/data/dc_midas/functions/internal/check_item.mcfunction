execute if predicate dc_midas:holding/any unless predicate dc_midas:holding/unmodifiable run data modify entity @s HandItems[0].tag.MidasOldItem set from entity @s HandItems[0].id
execute if data entity @s HandItems[0].tag.MidasOldItem run function dc_midas:internal/add_data