execute store result score <total_items> variable run data get storage pandamium:containers item.components."minecraft:bundle_contents"
data modify storage pandamium:containers inspect.prompt set value {prefix:'{"text":"└bundle_contents: ","color":"aqua"}',body:'{"text":"[See Items]","color":"blue"}',suffix:'""',body_inspection_description:'[{"text":"x","color":"gray"},{"score":{"name":"<total_items>","objective":"variable"}}," Slots"]'}

function pandamium:impl/containers/run/inspect/do_prompt/main
