# arguments: id, colorable, hidden, display

$data modify storage pandamium:local functions."pandamium:startup/flair/load_flair" set value {id: $(id), colorable: $(colorable)b, hidden: $(hidden)b, display: $(display)}
execute unless data storage pandamium:local functions."pandamium:startup/flair/load_flair".display.name run return fail
execute unless data storage pandamium:local functions."pandamium:startup/flair/load_flair".display.value run return fail

# add to map
data modify storage pandamium:local functions."pandamium:startup/flair/load_flair" merge from storage pandamium:local functions."pandamium:startup/flair/load_flair".display
data remove storage pandamium:local functions."pandamium:startup/flair/load_flair".display
$data modify storage pandamium:dictionary flair_types."$(id)" set from storage pandamium:local functions."pandamium:startup/flair/load_flair"

# add to dialogue
execute if data storage pandamium:local functions."pandamium:startup/flair/load_flair"{hidden:true} run return 0

data modify storage pandamium:dictionary flair_menu.actions append value {width:20,label:{shadow_color:0,text:"",extra:[]},tooltip:[{__name__:true},{color:"gray",italic:true,text:"\nPreview: "},{__username__:true}," ",{__value__:true,shadow_color:0,text:"",extra:[]}],action:{type:"minecraft:run_command",command:""}}
data modify storage pandamium:dictionary flair_menu.actions[-1].label.extra append from storage pandamium:local functions."pandamium:startup/flair/load_flair".value
data modify storage pandamium:dictionary flair_menu.actions[-1].tooltip[{__name__:true}] set from storage pandamium:local functions."pandamium:startup/flair/load_flair".name
data modify storage pandamium:dictionary flair_menu.actions[-1].tooltip[{__value__:true}].extra append from storage pandamium:local functions."pandamium:startup/flair/load_flair".value
data modify storage pandamium:dictionary flair_menu.actions[-1].__colorable__ set from storage pandamium:local functions."pandamium:startup/flair/load_flair".colorable

execute store result score <argument> variable run data get storage pandamium:local functions."pandamium:startup/flair/load_flair".id -1
execute store result storage pandamium:local functions."pandamium:startup/flair/load_flair".argument int 1 run scoreboard players remove <argument> variable 1000
function pandamium:startup/flair/load_flair/set_command with storage pandamium:local functions."pandamium:startup/flair/load_flair"
