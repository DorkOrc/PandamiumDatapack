# inputs:
# - score <value> variable

data modify storage do:io input set value [{color:"green",text:""},{bold:true,score:{name:"<value>",objective:"variable"}}]
function do:text/resolve
data modify storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".entry.display set from storage do:io output
