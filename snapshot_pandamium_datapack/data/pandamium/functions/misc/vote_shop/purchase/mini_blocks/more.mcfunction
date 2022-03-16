# Section -2
data remove storage pandamium:temp item

execute if score <value_in_section> variable matches 1 run data merge storage pandamium:temp {item:{id:'minecraft:bedrock'}}
execute if score <value_in_section> variable matches 2 run data merge storage pandamium:temp {item:{id:'minecraft:end_portal_frame'}}
execute if score <value_in_section> variable matches 3 run data merge storage pandamium:temp {item:{id:'minecraft:spawner'}}
execute if score <value_in_section> variable matches 4 run data merge storage pandamium:temp {item:{id:'minecraft:jigsaw'}}
execute if score <value_in_section> variable matches 5 run data merge storage pandamium:temp {item:{id:'minecraft:structure_block'}}
execute if score <value_in_section> variable matches 6 run data merge storage pandamium:temp {item:{id:'group:command_blocks'}}
execute if score <value_in_section> variable matches 7 run data merge storage pandamium:temp {item:{id:'minecraft:reinforced_deepslate'}}

execute if data storage pandamium:temp item.id run function pandamium:misc/vote_shop/purchase/mini_blocks/from_storage
