# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text input

execute unless entity @s in pandamium:staff_world positioned 0. 0 0. summon area_effect_cloud run return run function pandamium:impl/text/resolve_input/main
function pandamium:impl/text/resolve_input/main
