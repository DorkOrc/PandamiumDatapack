# input:
# - storage pandamium:text input
# output:
# - returns 1 if non-empty, fails otherwise

scoreboard players set <text_utility_used> global 1

return run function pandamium:impl/text/test_non_empty/main
