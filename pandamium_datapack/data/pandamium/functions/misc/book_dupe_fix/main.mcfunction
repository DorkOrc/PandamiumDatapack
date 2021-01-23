function pandamium:misc/book_dupe_fix/found_page
data remove storage pandamium:book_dupe pages
execute if score <page_length> variable matches 21853.. run function pandamium:misc/book_dupe_fix/detected
