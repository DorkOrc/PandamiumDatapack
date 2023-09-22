data modify storage pandamium:text input set from storage pandamium:temp text
function pandamium:utils/text/remove_formatting_from_json/inclusive

data modify block 3 0 0 front_text.messages[0] set from storage pandamium:text output

data remove storage pandamium:text compound.color
function pandamium:impl/font/reapply_root_attributes/main

return 1
