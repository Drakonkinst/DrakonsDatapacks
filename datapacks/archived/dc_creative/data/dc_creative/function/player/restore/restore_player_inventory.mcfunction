data modify storage dc_creative:temp Items set value []
data modify storage dc_creative:temp Items set from entity @e[type=marker,tag=dc_current_player_data,limit=1] data.Inventory

function dc_creative:player/restore/copy_inventory
