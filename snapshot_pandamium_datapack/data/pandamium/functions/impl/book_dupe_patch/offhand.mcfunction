advancement revoke @s only pandamium:detect/sign_book_via_offhand
data modify storage pandamium:book_dupe pages set from entity @s Inventory[{Slot:-106b}].tag.pages
scoreboard players set <hand> variable 0

execute if data storage pandamium:book_dupe pages[] run function pandamium:impl/book_dupe_patch/main
data remove storage pandamium:book_dupe pages
