execute if score <section> variable matches -1 run function pandamium:triggers/vote_shop/purchase/misc
execute if score <section> variable matches -2 run function pandamium:triggers/vote_shop/purchase/mini_blocks/more
execute if score <section> variable matches -3 run function pandamium:triggers/vote_shop/purchase/mini_blocks/cultural
execute if score <section> variable matches -200..-101 run function pandamium:triggers/vote_shop/purchase/mini_blocks/symbol
execute if score <section> variable matches ..-201 run function pandamium:triggers/vote_shop/purchase/mini_blocks/variant

execute store success score <can_buy> variable if score <has_given> variable matches 1
