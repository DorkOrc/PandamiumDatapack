execute store result score <total_pages> variable run data get storage pandamium:containers item.tag.pages
data modify storage pandamium:containers inspect.prompt set value {prefix:'{"text":"└Pages: ","color":"aqua"}',body:'{"text":"[See Pages]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to inspect ","color":"blue"},{"text":"Pages","bold":true},"\\n",[{"text":"x","color":"gray"},{"score":{"name":"<total_pages>","objective":"variable"}}," Pages"]]}}',body_disabled:'{"text":"[See Pages]","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"x","color":"gray"},{"score":{"name":"<total_pages>","objective":"variable"}}," Pages"]}}',suffix:'""'}

function pandamium:containers/run/inspect/do_prompt/main
