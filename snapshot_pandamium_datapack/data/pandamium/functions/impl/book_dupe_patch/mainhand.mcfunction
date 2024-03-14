advancement revoke @s only pandamium:detect/sign_book_via_mainhand

execute in pandamium:staff_world run item replace block 3 0 0 container.0 from entity @s weapon.mainhand
execute in pandamium:staff_world run data modify storage pandamium:book_dupe pages set from block 3 0 0 item.components."minecraft:written_book_content".pages

scoreboard players set <hand> variable 1

execute if data storage pandamium:book_dupe pages[0] run function pandamium:impl/book_dupe_patch/main
