# arguments: args

# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

$data modify storage pandamium:text args set value $(args)
function pandamium:impl/text/split/main
