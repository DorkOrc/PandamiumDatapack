scoreboard players set <has_printed_menu> variable 0
function pandamium:misc/vote_shop/print_menu/mini_blocks/variant

execute unless score <has_printed_menu> variable matches 1 if data storage pandamium:temp item.id run function pandamium:misc/vote_shop/purchase/mini_blocks/from_storage/give
