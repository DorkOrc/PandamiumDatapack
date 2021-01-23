advancement revoke @s only pandamium:book_signed_via_mainhand
data modify storage pandamium:book_dupe pages set from entity @s SelectedItem.tag.pages
scoreboard players set <hand> variable 1
function pandamium:misc/book_dupe_patch/main
