data modify storage pandamium:text input set from storage pandamium:temp Text
function pandamium:utils/text/remove_formatting_from_json
data modify block 3 0 0 front_text.messages[0] set from storage pandamium:text output
function pandamium:impl/font/custom_fonts/reapply_root_attributes/main