function pandamium:misc/auto_jail {args:{reason:"book duping"}}

execute if score <hand> variable matches 1 run data modify storage pandamium:book_dupe detections append from entity @s SelectedItem.components."minecraft:written_book_content"
execute if score <hand> variable matches 0 run data modify storage pandamium:book_dupe detections append from entity @s equipment.offhand.components."minecraft:written_book_content"
data remove storage pandamium:book_dupe detections[-1].pages

execute if score <hand> variable matches 1 run item replace entity @s weapon with air
execute if score <hand> variable matches 0 run item replace entity @s weapon.offhand with air
