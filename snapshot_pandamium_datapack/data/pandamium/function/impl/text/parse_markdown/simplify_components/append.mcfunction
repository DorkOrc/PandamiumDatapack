execute unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0].extra run data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".simplified_components append from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0]
execute unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0].extra run return run data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0]

data modify storage pandamium:text input set value []
data modify storage pandamium:text input append from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0].text
data modify storage pandamium:text input append from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0].extra[]
function pandamium:utils/text/concatenate_strings

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0].text set from storage pandamium:text output
data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0].extra

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".simplified_components append from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0]
data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0]
