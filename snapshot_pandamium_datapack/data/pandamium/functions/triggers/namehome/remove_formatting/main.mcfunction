data modify storage pandamium:text input set from storage pandamium:temp text
function pandamium:utils/text/remove_formatting_from_json/inclusive
data modify storage pandamium:temp text set string storage pandamium:text output 8 -1
data modify block 1 0 0 Items[0].tag.display.Name set string storage pandamium:text output 8 -1
