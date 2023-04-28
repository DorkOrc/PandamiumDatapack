execute store result score <page_length> variable run data get storage pandamium:book_dupe pages[-1]
data remove storage pandamium:book_dupe pages[-1]
execute unless score <page_length> variable matches 21853.. if data storage pandamium:book_dupe pages[] run function pandamium:impl/book_dupe_patch/found_page
#maximum saveable page size: 65535 bytes
#maximum size of a character with a length of 1: 3 bytes
#size of '{"text":""}': 11 bytes
#maximum always saveable page length: (65535-11)/3+11 characters
