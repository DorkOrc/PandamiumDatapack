# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

scoreboard players set <text_utility_used> global 1

execute unless entity @s in pandamium:staff_world positioned 0. 0 0. summon marker if function pandamium:utils/discard_marker run return run function pandamium:impl/text/escape_double_quotes/main
function pandamium:impl/text/escape_double_quotes/main
