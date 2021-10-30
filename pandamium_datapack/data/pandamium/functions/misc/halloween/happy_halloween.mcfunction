execute store success score <filled_head_slot> variable if data entity @s Inventory[{Slot:103b}]
function pandamium:misc/count_filled_inventory_slots

execute if score <filled_head_slot> variable matches 1 unless score <filled_inventory_slots> variable matches 36 in pandamium:staff_world run function pandamium:misc/halloween/unequip_head_slot

execute if score <filled_head_slot> variable matches 0 run item replace entity @s armor.head with carved_pumpkin{display:{Name:'{"bold":true,"italic":false,"color":"#FF7F00","text":"Happy Halloween!"}'},Enchantments:[{}]}
execute if score <filled_head_slot> variable matches 1 run give @s carved_pumpkin{display:{Name:'{"bold":true,"italic":false,"color":"#FF7F00","text":"Happy Halloween!"}'},Enchantments:[{}]}

tellraw @s {"text":"Server whispers to you: ☠ Happy Halloween ☠","color":"gray","italic":true}
function pandamium:misc/particles/death_particles/witch
