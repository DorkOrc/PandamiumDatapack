execute store success score <left_bold> variable if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0].bold
execute store success score <left_italic> variable if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0].italic
execute store success score <right_bold> variable if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[1].bold
execute store success score <right_italic> variable if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[1].italic

scoreboard players set <merge> variable 0
execute unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0].click_event unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[1].click_event if score <left_bold> variable = <right_bold> variable if score <left_italic> variable = <right_italic> variable run scoreboard players set <merge> variable 1

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".this_component set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0]

execute if score <merge> variable matches 1 run function pandamium:impl/text/parse_markdown/simplify_components/merge
execute if score <merge> variable matches 0 run function pandamium:impl/text/parse_markdown/simplify_components/append

execute unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[1] run return run function pandamium:impl/text/parse_markdown/simplify_components/append
function pandamium:impl/text/parse_markdown/simplify_components/loop
