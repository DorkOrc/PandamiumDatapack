execute if score <index> variable > <final_index> variable run function pandamium:impl/text/parse_markdown/append_string/slice_until_end with storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"

execute if score <index> variable <= <final_index> variable store result storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".slice_to int 1 run scoreboard players get <index> variable
execute if score <index> variable <= <final_index> variable run function pandamium:impl/text/parse_markdown/append_string/slice with storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"

execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{slice:""} run return 0

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components append value {text:""}
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[-1].text set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".slice
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[-1].__left__ append from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".nodes[].index

scoreboard players add <total_components> variable 1
