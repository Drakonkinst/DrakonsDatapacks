# Sneak detection
execute if predicate drakoncore:is_sneaking run scoreboard players add @s dc_symbioteSneak 1
execute unless predicate dc_symbiote:holding_spider_eye run scoreboard players reset @s dc_symbioteSneak
execute unless predicate drakoncore:is_sneaking run scoreboard players reset @s dc_symbioteSneak

# Sneak abilities
execute if score @s dc_symbioteSneak matches 1..2 run function dc_symbiote:display/display
execute if score @s dc_symbioteSneak matches 3.. run function dc_symbiote:possess/attempt_possess

execute if entity @s[tag=dc_symbiotePossess] run function dc_symbiote:possess/tick20