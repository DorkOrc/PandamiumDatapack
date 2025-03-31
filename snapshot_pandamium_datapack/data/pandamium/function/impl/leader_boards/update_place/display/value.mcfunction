# inputs:
# - score <value> variable

data modify storage pandamium:text input set value [{color:"green",text:""},{bold:true,score:{name:"<value>",objective:"variable"}}]
function pandamium:utils/text/input/resolve
data modify storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry.display set from storage pandamium:text input
