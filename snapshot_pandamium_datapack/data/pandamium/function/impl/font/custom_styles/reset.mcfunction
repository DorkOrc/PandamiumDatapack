data modify storage pandamium:temp compound_copy set from storage pandamium:text compound

function pandamium:utils/text/remove_formatting_from_compound

data remove storage pandamium:temp compound_copy.text
data remove storage pandamium:temp compound_copy.extra
data remove storage pandamium:temp compound_copy.color
data modify storage pandamium:text compound merge from storage pandamium:temp compound_copy
data remove storage pandamium:temp compound_copy

return 1
