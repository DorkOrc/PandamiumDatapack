# Section -2
data remove storage pandamium:temp vote_shop.selected_item

execute if score <value_in_section> variable matches 1 run data modify storage pandamium:temp vote_shop.selected_item merge value {id:'minecraft:bedrock'}
execute if score <value_in_section> variable matches 2 run data modify storage pandamium:temp vote_shop.selected_item merge value {id:'minecraft:end_portal_frame'}
execute if score <value_in_section> variable matches 3 run data modify storage pandamium:temp vote_shop.selected_item merge value {id:'minecraft:spawner'}
execute if score <value_in_section> variable matches 4 run data modify storage pandamium:temp vote_shop.selected_item merge value {id:'minecraft:jigsaw'}
execute if score <value_in_section> variable matches 5 run data modify storage pandamium:temp vote_shop.selected_item merge value {id:'minecraft:structure_block'}
execute if score <value_in_section> variable matches 6 run data modify storage pandamium:temp vote_shop.selected_item merge value {id:'group:command_blocks'}
execute if score <value_in_section> variable matches 7 run data modify storage pandamium:temp vote_shop.selected_item merge value {id:'minecraft:reinforced_deepslate'}
execute if score <value_in_section> variable matches 8 run data modify storage pandamium:temp vote_shop.selected_item merge value {id:'minecraft:sculk_shrieker'}
execute if score <value_in_section> variable matches 9 run data modify storage pandamium:temp vote_shop.selected_item merge value {id:'minecraft:trial_spawner'}

execute if data storage pandamium:temp vote_shop.selected_item.id run function pandamium:triggers/vote_shop/purchase/mini_blocks/from_storage/main
