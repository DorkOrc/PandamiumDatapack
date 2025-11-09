# arguments: args

# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

scoreboard players set <text_utility_used> global 1

$data modify storage pandamium:local functions."pandamium:utils/text/markdown".args set value $(args)
execute store success score <hyperlinks> variable if data storage pandamium:local functions."pandamium:utils/text/markdown".args{hyperlinks:true}

function pandamium:impl/text/parse_markdown/main
