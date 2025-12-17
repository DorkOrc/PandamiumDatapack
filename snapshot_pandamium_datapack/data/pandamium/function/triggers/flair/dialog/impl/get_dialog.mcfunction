# get template
data modify storage pandamium:local functions."pandamium:triggers/flair/*".dialog set from storage pandamium:dictionary flair_menu

# show disclaimer if the user can't save a flair
execute unless predicate pandamium:can_have_flair run data modify storage pandamium:local functions."pandamium:triggers/flair/*".dialog.body insert 1 value {type:"minecraft:plain_message",width:400,contents:[{color:"red",text:"Only high-scorers from last month's leader boards and Patreon supporters can set a flair! You can check out our ",hover_event:{action:"show_text",value:[{color:"aqua",text:"Click to join our "},{bold:true,text:"Discord Server"}]},click_event:{action:"open_url",url:"http://discord.pandamium.eu"},extra:[{bold:true,text:"discord server"}," for more information on how to support us, or try to get into the top ten of a monthly leaderboard!"]}]}

# get current flair
function pandamium:utils/database/players/load/self
data remove storage pandamium:local functions."pandamium:triggers/flair/*".current_type
data remove storage pandamium:local functions."pandamium:triggers/flair/*".current_value
function pandamium:triggers/flair/get_current_flair with storage pandamium.db.players:io selected.entry.data.flair

# remove flair (edit text component directly to work around bug with Vanish mod)
data modify storage do:io input set value {selector:"@s"}
function do:text/resolve
data modify storage pandamium:local functions."pandamium:triggers/flair/*".username set from storage do:io output
data remove storage pandamium:local functions."pandamium:triggers/flair/*".username.extra[{extra:[{insertion:">>suffix<<"}]}]

# set previews
data modify storage do:io input set value [{storage:"pandamium:local",nbt:'functions."pandamium:triggers/flair/*".username',interpret:true}," ",{shadow_color:0,storage:"pandamium:local",nbt:'functions."pandamium:triggers/flair/*".current_value',interpret:true}]
function do:text/resolve
data modify storage pandamium:local functions."pandamium:triggers/flair/*".preview_color set from storage do:io output.color
data modify storage pandamium:local functions."pandamium:triggers/flair/*".preview_color set from storage pandamium.db.players:io selected.entry.data.flair.color
data modify storage pandamium:local functions."pandamium:triggers/flair/*".dialog.body[{__preview__:true}].contents[{__preview__:true}] set from storage do:io output

function pandamium:utils/resolve_text_component {text_component:{storage:"pandamium:local",nbt:'functions."pandamium:triggers/flair/*".username',interpret:true},write_to:'storage pandamium:local functions."pandamium:triggers/flair/*".dialog.actions[].tooltip[{__username__:true}]'}

data modify storage pandamium:local functions."pandamium:triggers/flair/*".dialog.actions[{__colorable__:true}].tooltip[{__value__:true}].color set from storage pandamium:local functions."pandamium:triggers/flair/*".preview_color
