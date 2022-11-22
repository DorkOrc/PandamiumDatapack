execute store result score <total_items> variable run data get storage pandamium:containers item.tag.Items
data modify storage pandamium:containers inspect.prompt set value {prefix:'{"text":"└Items: ","color":"aqua"}',body:'{"text":"[See Items]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to inspect ","color":"blue"},{"text":"Items","bold":true},"\\n",[{"text":"x","color":"gray"},{"score":{"name":"<total_items>","objective":"variable"}}," Slots"]]}}',body_disabled:'{"text":"[See Items]","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"x","color":"gray"},{"score":{"name":"<total_items>","objective":"variable"}}," Slots"]}}',suffix:'""'}

function pandamium:containers/run/inspect/do_prompt/main
