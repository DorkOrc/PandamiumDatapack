execute in pandamium:staff_world run data modify storage pandamium:text input set from block 6 1 0 LastOutput
function pandamium:utils/text/get_compound

data modify storage pandamium:temp enabled_datapacks set value []
data modify storage pandamium:temp enabled_datapacks append from storage pandamium:text compound.extra[0].with[1].extra[].insertion
