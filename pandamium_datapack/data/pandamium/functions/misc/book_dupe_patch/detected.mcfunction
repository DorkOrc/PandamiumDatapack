data merge storage pandamium:jail {reason:'book duping'}
function pandamium:misc/jail/get_auto_jailed

execute if score <hand> variable matches 1 run data modify storage pandamium:book_dupe detections append from entity @s SelectedItem.tag
execute if score <hand> variable matches 0 run data modify storage pandamium:book_dupe detections append from entity @s Inventory[{Slot:-106b}].tag

execute if score <hand> variable matches 1 run item replace entity @s weapon with air
execute if score <hand> variable matches 0 run item replace entity @s weapon.offhand with air

data remove storage pandamium:book_dupe detections[-1].pages
