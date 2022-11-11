advancement revoke @s only pandamium:detect/bookshelf_dupe_fix/use_book_on_filled_bookshelf

item modify entity @s weapon.mainhand pandamium:decrement_count

scoreboard players add @s detect.bookshelf_dupe_patch_counter 1

execute if score @s detect.bookshelf_dupe_patch_counter matches 2.. run tellraw @a[scores={staff_perms=1..}] [{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"},{"text":" might be trying to exploit a duplication bug.","color":"gray"}]
execute if score @s detect.bookshelf_dupe_patch_counter matches 2.. run scoreboard players reset @s detect.bookshelf_dupe_patch_counter
