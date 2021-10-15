data modify storage pandamium:temp NBT set from entity @s

data remove storage pandamium:temp mainhand
data modify storage pandamium:temp mainhand set from storage pandamium:temp NBT.SelectedItem
data remove storage pandamium:temp offhand
data modify storage pandamium:temp offhand set from storage pandamium:temp NBT.Inventory[{Slot:-106b}]

scoreboard players set <has_given_mini_block> variable 0
function pandamium:misc/vote_shop/mini_blocks/give_from_hands

execute if score <has_given_mini_block> variable matches 1 at @s run playsound ui.stonecutter.take_result master @s
execute if score <has_given_mini_block> variable matches 0 run scoreboard players set <can_buy> variable 0
