data modify storage pandamium:text input set from storage pandamium:temp text
function pandamium:utils/text/remove_formatting_from_json/inclusive
data modify storage pandamium:temp text set from storage pandamium:text output
data modify block 1 0 0 Items[0].components."minecraft:custom_name" set from storage pandamium:temp text
