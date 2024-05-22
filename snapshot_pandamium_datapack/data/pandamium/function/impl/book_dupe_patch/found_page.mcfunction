execute store result score <page_length> variable run data get storage pandamium:book_dupe pages[-1]

execute if score <page_length> variable matches 21846.. run return 1

data remove storage pandamium:book_dupe pages[-1]
execute if data storage pandamium:book_dupe pages[0] run return run function pandamium:impl/book_dupe_patch/found_page

return 0

#maximum saveable page size: 65535 bytes
#maximum size of a character with a length of 1: 3 bytes
#size of '""': 2 bytes
#maximum always saveable page length: floor((65535-2)/3 + 2) characters
