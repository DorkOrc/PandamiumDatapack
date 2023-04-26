execute store result score <total_pages> variable run data get storage pandamium:containers item.tag.pages
data modify storage pandamium:containers inspect.prompt set value {prefix:'{"text":"└Pages: ","color":"aqua"}',body:'{"text":"[See Pages]","color":"blue"}',suffix:'""',body_inspection_description:'[{"text":"x","color":"gray"},{"score":{"name":"<total_pages>","objective":"variable"}}," Pages"]'}

function pandamium:impl/containers/run/inspect/do_prompt/main
