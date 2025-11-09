data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components append value {text:""}
scoreboard players operation <last_component_index> variable = <total_components> variable
scoreboard players add <total_components> variable 1
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[-1].__left__ append from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes[].index
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[-1].__left__ append from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".asterisk_nodes[].index
