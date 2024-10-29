# replace ID
data modify storage pandamium:containers item.display_id set from storage pandamium:containers item.components."minecraft:custom_data".pandamium.id
data modify storage pandamium:containers item.display_id_parent set value '{"text":"","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Some data is hidden for custom items","color":"red"}}}'

# remove necessary data
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"bedrock_breaker"} run data remove storage pandamium:containers item.components."minecraft:enchantments".levels."pandamium:bedrock_breaker"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"bedrock_breaker"} run data remove storage pandamium:containers item.components."!minecraft:equippable"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"bedrock_breaker"} run data remove storage pandamium:containers item.components."minecraft:attribute_modifiers"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"bedrock_breaker"} run data remove storage pandamium:containers item.components."minecraft:dyed_color"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"bedrock_breaker"} run data remove storage pandamium:containers item.components."minecraft:enchantment_glint_override"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"bedrock_breaker"} run data remove storage pandamium:containers item.components."minecraft:item_model"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"bedrock_breaker"} run data remove storage pandamium:containers item.components."minecraft:max_damage"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"bedrock_breaker"} run data remove storage pandamium:containers item.components{"minecraft:damage":0}."minecraft:damage"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"bedrock_breaker"} run data remove storage pandamium:containers item.components."minecraft:rarity"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"bedrock_breaker"} run data remove storage pandamium:containers item.components."minecraft:tool"

execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"blindness_splash_potion"} run data remove storage pandamium:containers item.components{"minecraft:custom_name":'{"fallback":"Splash Potion of Blindness","italic":false,"translate":"item.pandamium.blindness_splash_potion"}'}."minecraft:custom_name"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"blindness_splash_potion"} run data remove storage pandamium:containers item.components."minecraft:potion_contents"

execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"dork_feather"} run data remove storage pandamium:containers item.components."!minecraft:damage"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"dork_feather"} run data remove storage pandamium:containers item.components."!minecraft:max_damage"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"dork_feather"} run data remove storage pandamium:containers item.components."minecraft:dyed_color"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"dork_feather"} run data remove storage pandamium:containers item.components."minecraft:equippable"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"dork_feather"} run data remove storage pandamium:containers item.components."minecraft:item_model"

execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"dwarven_potion"} run data remove storage pandamium:containers item.components{"minecraft:custom_name":'{"fallback":"Dwarven Potion","italic":false,"translate":"item.pandamium.dwarven_potion"}'}."minecraft:custom_name"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"dwarven_potion"} run data remove storage pandamium:containers item.components."minecraft:potion_contents"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"dwarven_potion"} run data remove storage pandamium:containers item.components."minecraft:hide_additional_tooltip"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"dwarven_potion"} run data remove storage pandamium:containers item.components."minecraft:rarity"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"dwarven_potion"} run data remove storage pandamium:containers item.components."minecraft:lore"

execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"endermite_minecart"} run data remove storage pandamium:containers item.components."minecraft:enchantment_glint_override"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"endermite_minecart"} run data remove storage pandamium:containers item.components."minecraft:entity_data"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"endermite_minecart"} run data remove storage pandamium:containers item.components."minecraft:rarity"

execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"guidebook"} run data remove storage pandamium:containers item.components."minecraft:hide_additional_tooltip"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"guidebook"} run data remove storage pandamium:containers item.components."minecraft:lore"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"guidebook"} run data modify storage pandamium:containers item.components."minecraft:written_book_content".__hide_details__ set value 1b

execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"stored_mob"} run data modify storage pandamium:containers item.components."minecraft:custom_data".pandamium.stored_mob_id set from storage pandamium:containers item.components."minecraft:custom_data".pandamium.stored_mob.id
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"stored_mob"} run data remove storage pandamium:containers item.components."minecraft:custom_data".pandamium.stored_mob
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"stored_mob"} run data modify storage pandamium:containers item.components."minecraft:custom_data".pandamium.stored_mob.id set from storage pandamium:containers item.components."minecraft:custom_data".pandamium.stored_mob_id
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"stored_mob"} run data remove storage pandamium:containers item.components."minecraft:custom_data".pandamium.stored_mob_id
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"stored_mob"} run data remove storage pandamium:containers item.components."minecraft:enchantment_glint_override"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"stored_mob"} run data remove storage pandamium:containers item.components."minecraft:lore"
execute if data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"stored_mob"} run data remove storage pandamium:containers item.components{"minecraft:custom_name":'{"color":"gold","italic":false,"text":"Stored Mob Item"}'}."minecraft:custom_name"

# remove custom data if empty
execute unless data storage pandamium:containers item.components."minecraft:custom_data".pandamium{id:"guidebook"} run data remove storage pandamium:containers item.components."minecraft:item_name"
data remove storage pandamium:containers item.components."minecraft:custom_data".pandamium.id
data remove storage pandamium:containers item.components."minecraft:custom_data".pandamium.version

execute store result score <keys> variable run data get storage pandamium:containers item.components."minecraft:custom_data".pandamium
execute if score <keys> variable matches 0 run data remove storage pandamium:containers item.components."minecraft:custom_data".pandamium
execute store result score <keys> variable run data get storage pandamium:containers item.components."minecraft:custom_data"
execute if score <keys> variable matches 0 run data remove storage pandamium:containers item.components."minecraft:custom_data"

