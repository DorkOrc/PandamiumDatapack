# arguments: args

function pandamium:triggers/flair/dialog/impl/get_dialog

$data modify storage pandamium:local functions."pandamium:triggers/flair/*".args set value $(args)
data modify storage pandamium:local functions."pandamium:triggers/flair/*".dialog.body append value {type:"minecraft:plain_message",contents:{color:"red",text:""}}
data modify storage pandamium:local functions."pandamium:triggers/flair/*".dialog.body[-1].contents.extra append from storage pandamium:local functions."pandamium:triggers/flair/*".args.message

function pandamium:triggers/flair/dialog/impl/show_dialog with storage pandamium:local functions."pandamium:triggers/flair/*"

