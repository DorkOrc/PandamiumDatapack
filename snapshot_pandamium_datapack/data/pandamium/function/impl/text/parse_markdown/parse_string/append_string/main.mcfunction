execute if score <index> variable > <final_index> variable run function pandamium:impl/text/parse_markdown/parse_string/append_string/slice_until_end with storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"

execute if score <index> variable <= <final_index> variable store result storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".slice_to int 1 run scoreboard players get <index> variable
execute if score <index> variable <= <final_index> variable run function pandamium:impl/text/parse_markdown/parse_string/append_string/slice with storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"

function pandamium:impl/text/parse_markdown/parse_string/add_component
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[-1].text set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".slice
