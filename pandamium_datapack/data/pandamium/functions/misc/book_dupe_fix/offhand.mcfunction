advancement revoke @s only pandamium:book_signed_via_offhand
data modify storage pandamium:book_dupe pages set from entity @s Inventory[{Slot:-106b}].tag.pages
scoreboard players set <hand> variable 0
function pandamium:misc/book_dupe_fix/main
