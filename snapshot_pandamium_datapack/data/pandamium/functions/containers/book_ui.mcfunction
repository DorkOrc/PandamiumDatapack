data merge storage pandamium:containers {slot_prefix:'pages.'}
data merge storage pandamium:containers {container:'book_ui'}

execute store success score <interpret> variable if data storage pandamium:containers items[{id:"minecraft:written_book"}]
data modify storage pandamium:containers items set from storage pandamium:containers items[0].tag.pages

scoreboard players set <page> variable 0
function pandamium:containers/run/book_ui
