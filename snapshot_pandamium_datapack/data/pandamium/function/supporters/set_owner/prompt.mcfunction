# arguments: patreon_id

$execute unless data storage pandamium:supporters import.users[{patreon_id:"$(patreon_id)"}] run return fail

data modify storage pandamium:local functions."pandamium:supporters/set_owner/*".dialog set value {\
  type: "minecraft:confirmation",\
  title: "Supporters",\
  body: {\
    type: "minecraft:plain_message",\
    contents: "",\
    width: 600\
  },\
  inputs: [\
    {\
      type: "minecraft:text",\
      key: "username",\
      label: "Username",\
      initial: "",\
      max_length: 16\
    }\
  ],\
  yes: {\
    label: {\
      translate: "gui.done"\
    },\
    action: {\
      type: "minecraft:dynamic/run_command",\
      template: ""\
    }\
  },\
  no: {\
    label: {\
      translate: "gui.cancel"\
    }\
  }\
}

$function pandamium:supporters/set_owner/__impl__/set_template {patreon_id:"$(patreon_id)",_:""}

$function pandamium:utils/database/players/load/from_patreon_id {patreon_id:"$(patreon_id)"}
data modify storage pandamium:local functions."pandamium:supporters/set_owner/*".dialog.inputs[0].initial set from storage pandamium.db.players:io selected.entry.username

$data modify storage do:io input set value ["Set Minecraft account for\n",{underlined:true,storage:"pandamium:supporters",nbt:'import.users[{patreon_id:"$(patreon_id)"}].patreon_name'},{color:"gray",text:"\n($(patreon_id))"}]
function do:text/resolve
data modify storage pandamium:local functions."pandamium:supporters/set_owner/*".dialog.body.contents set from storage do:io output

function pandamium:utils/show_dialog with storage pandamium:local functions."pandamium:supporters/set_owner/*"
