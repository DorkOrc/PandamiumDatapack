advancement revoke @s only pandamium:book_signed_via_offhand
data modify storage pandamium:book_dupe pages set from entity @s Inventory[{Slot:-106b}].tag.pages
scoreboard players set <hand> temp 0

execute if data storage pandamium:book_dupe pages[] run function pandamium:misc/book_dupe_patch/main
data remove storage pandamium:book_dupe pages
