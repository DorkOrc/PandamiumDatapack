data remove storage pandamium:temp mainhand
data modify storage pandamium:temp mainhand set from entity @s SelectedItem
data remove storage pandamium:temp offhand
data modify storage pandamium:temp offhand set from entity @s Inventory[{Slot:-106b}]

scoreboard players set <can_give_mini_block> variable 0
function pandamium:misc/vote_shop/mini_blocks/give_mini_block

execute if score <can_give_mini_block> variable matches 1 run playsound ui.stonecutter.take_result master @s
execute if score <can_give_mini_block> variable matches 0 run scoreboard players set <can_buy> variable 0
