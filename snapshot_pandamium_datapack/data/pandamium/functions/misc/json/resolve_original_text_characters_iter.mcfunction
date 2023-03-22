data modify storage pandamium:json all_characters append from storage pandamium:json original_text_characters[0]
data remove storage pandamium:json original_text_characters[0]
data remove storage pandamium:json original_text_characters[0]
data remove storage pandamium:json original_text_characters[0]
data remove storage pandamium:json original_text_characters[0]
execute if data storage pandamium:json original_text_characters[0] run function pandamium:misc/json/resolve_original_text_characters_iter
