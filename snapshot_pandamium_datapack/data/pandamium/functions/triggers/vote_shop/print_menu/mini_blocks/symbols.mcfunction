#execute if score @s rewards_shop matches 4 run tellraw ... menu for choosing material
#execute if score @s rewards_shop matches 4 run scoreboard players set <has_printed_menu> variable 1

#execute if score <section> variable matches 300 run function pandamium:triggers/vote_shop/print_menu/mini_blocks/symbols/ <- material 1
#execute if score <section> variable matches 301 run function pandamium:triggers/vote_shop/print_menu/mini_blocks/symbols/ <- material 2
#execute if score <section> variable matches 399 run function pandamium:triggers/vote_shop/print_menu/mini_blocks/symbols/ <- material 100
#
# etc.

