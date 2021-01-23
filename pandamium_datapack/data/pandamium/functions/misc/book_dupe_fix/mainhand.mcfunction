advancement revoke @s only pandamium:book_signed_via_mainhand
data modify storage pandamium:book pages set from entity @s SelectedItem.tag.pages
function pandamium:misc/book_dupe_fix/check_for_page
data remove storage pandamium:book pages
