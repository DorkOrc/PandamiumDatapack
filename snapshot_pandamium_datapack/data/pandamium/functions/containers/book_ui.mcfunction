data merge storage pandamium:containers {slot_prefix:'pages.'}
data merge storage pandamium:containers {container:'book_ui'}

data modify storage pandamium:temp containers.book set value {}
data modify storage pandamium:temp containers.book set from storage pandamium:containers items[0]
execute store success score <interpret> variable if data storage pandamium:temp containers.book{id:"minecraft:written_book"}

data modify storage pandamium:containers items set value []
data modify storage pandamium:containers items set from storage pandamium:temp containers.book.tag.pages

scoreboard players set <page> variable 0
execute if data storage pandamium:containers items[0] run function pandamium:containers/run/book_ui
