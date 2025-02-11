# arguments: args

# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

scoreboard players set <text_utility_used> global 1

$data modify storage pandamium:text args set value $(args)
execute unless entity @s in pandamium:staff_world positioned 0. 0 0. summon area_effect_cloud run return run function pandamium:impl/text/concatenate_strings/main
function pandamium:impl/text/concatenate_strings/main
