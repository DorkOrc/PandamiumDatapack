data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:triggers/namehome/*".text
function pandamium:utils/text/flatten
data modify storage pandamium:local functions."pandamium:triggers/namehome/*".text set from storage pandamium:text output
item modify block 5 0 0 contents {function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/namehome/*'.text",interpret:true}}
