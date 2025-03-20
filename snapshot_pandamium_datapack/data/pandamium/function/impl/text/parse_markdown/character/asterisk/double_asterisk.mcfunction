data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string 1
scoreboard players add <index> variable 1
data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string 0 1

# append component and node
execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0] run data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[].__right__ append value {}
execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0] store result storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[].__right__[-1] int 1 run scoreboard players get <total_components> variable

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components append value {__is_node__:true,text:"**"}
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[-1].__left__ append from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".nodes[].index

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".nodes append value {type:"**"}
execute store result storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".nodes[-1].index int 1 run scoreboard players get <total_components> variable
execute store success storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".nodes[-1].leading byte 1 unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{next_character:" "}

scoreboard players add <total_components> variable 1
