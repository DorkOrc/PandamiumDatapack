data merge storage pandamium:containers {slot_prefix:'pages.'}
data merge storage pandamium:containers {container:'book_ui'}

data modify storage pandamium:temp containers.book set value {}
data modify storage pandamium:temp containers.book set from storage pandamium:containers items[0]
execute store success score <interpret> variable if data storage pandamium:temp containers.book{id:"minecraft:written_book"}

data modify storage pandamium:containers items set value []
data modify storage pandamium:containers items append from storage pandamium:temp containers.book{id:"minecraft:writable_book"}.components."minecraft:writable_book_content".pages[]
data modify storage pandamium:containers items append from storage pandamium:temp containers.book{id:"minecraft:written_book"}.components."minecraft:written_book_content".pages[]

scoreboard players set <page> variable 0
execute if data storage pandamium:containers items[0] run function pandamium:impl/containers/run/book_ui
