data modify storage do:io input set from storage pandamium:local functions."pandamium:triggers/namehome/*".text
function do:text/flatten
data modify storage pandamium:local functions."pandamium:triggers/namehome/*".text set from storage do:io output
item modify block 5 0 0 contents {function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/namehome/*'.text",interpret:true}}
