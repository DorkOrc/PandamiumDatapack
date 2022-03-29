advancement revoke @s only pandamium:detect/sign_book_via_mainhand
data modify storage pandamium:book_dupe pages set from entity @s SelectedItem.tag.pages
scoreboard players set <hand> variable 1

execute if data storage pandamium:book_dupe pages[] run function pandamium:misc/book_dupe_patch/main
data remove storage pandamium:book_dupe pages
