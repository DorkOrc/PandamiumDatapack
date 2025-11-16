# arguments: args

# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

scoreboard players set <text_utility_used> global 1

$data modify storage pandamium:text args set value $(args)
function pandamium:impl/text/split/main
