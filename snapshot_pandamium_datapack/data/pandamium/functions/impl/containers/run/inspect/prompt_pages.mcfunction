execute if data storage pandamium:containers item{id:"minecraft:written_book"} store result score <total_pages> variable run data get storage pandamium:containers item.components."minecraft:written_book_content".pages
execute if data storage pandamium:containers item{id:"minecraft:writable_book"} store result score <total_pages> variable run data get storage pandamium:containers item.components."minecraft:writable_book_content".pages
data modify storage pandamium:containers inspect.prompt set value {prefix:'{"text":"└pages: ","color":"aqua"}',body:'{"text":"[See Pages]","color":"blue"}',suffix:'""',body_inspection_description:'[{"text":"x","color":"gray"},{"score":{"name":"<total_pages>","objective":"variable"}}," Pages"]'}

function pandamium:impl/containers/run/inspect/do_prompt/main
