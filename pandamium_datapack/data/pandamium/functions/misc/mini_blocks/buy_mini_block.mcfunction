data remove storage pandamium:mini_blocks mainhand
data modify storage pandamium:mini_blocks mainhand set from entity @s SelectedItem
data remove storage pandamium:mini_blocks offhand
data modify storage pandamium:mini_blocks offhand set from entity @s Inventory[{Slot:-106b}]

function pandamium:misc/mini_blocks/give_mini_block
playsound ui.stonecutter.take_result master @s
