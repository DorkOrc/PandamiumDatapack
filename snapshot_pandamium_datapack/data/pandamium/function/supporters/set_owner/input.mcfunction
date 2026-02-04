# arguments: patreon_id, username

$execute unless data storage pandamium:supporters import.users[{patreon_id:"$(patreon_id)"}] run return fail

$data modify storage pandamium:local functions."pandamium:supporters/set_owner/*" set value {patreon_id:"$(patreon_id)",username:"$(username)"}
execute if data storage pandamium:local functions."pandamium:supporters/set_owner/*"{username:""} run return fail

data modify storage do:io input set from storage pandamium:local functions."pandamium:supporters/set_owner/*".username
function do:str/lower
data modify storage pandamium:local functions."pandamium:supporters/set_owner/*".lowercase_username set from storage do:io output
function pandamium:utils/database/players/load/from_lowercase_username with storage pandamium:local functions."pandamium:supporters/set_owner/*"
execute unless data storage pandamium.db.players:io selected run return fail

$execute if data storage pandamium.db.players:io selected.entry{patreon_id:"$(patreon_id)"} run tellraw @s [{color:"dark_red",text:"[Supporters] "},[{color:"red",text:""},{storage:"pandamium.db.players:io",nbt:"selected.entry.username"}," is already linked to that Patreon account!"]]
$execute if data storage pandamium.db.players:io selected.entry{patreon_id:"$(patreon_id)"} run return fail

# confirmation
$data modify storage pandamium:local functions."pandamium:supporters/set_owner/*".dialog set value {\
  type: "minecraft:confirmation",\
  title: "Supporters",\
  body: [\
    {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:player_head",\
        components: {\
          "minecraft:profile": "$(username)"\
        }\
      },\
      show_tooltip: false\
    },\
    {\
      type: "minecraft:plain_message",\
      contents: "",\
      width: 600\
    }\
  ],\
  yes: {\
    label: {\
      translate: "gui.yes"\
    },\
    action: {\
      type: "minecraft:run_command",\
      command: ""\
    }\
  },\
  no: {\
    label: {\
      translate: "gui.no"\
    }\
  }\
}

data modify storage pandamium:local functions."pandamium:supporters/set_owner/*".username set from storage pandamium.db.players:io selected.entry.username
function pandamium:supporters/set_owner/__impl__/set_command with storage pandamium:local functions."pandamium:supporters/set_owner/*"

$data modify storage do:io input set value ["Link Minecraft account ",{underlined:true,storage:"pandamium.db.players:io",nbt:"selected.entry.username"},"\n",{color:"gray",text:"("},{color:"gray",storage:"pandamium.db.players:io",nbt:"selected.entry.uuid"},{color:"gray",text:")"},"\n\nTo Patreon account ",{underlined:true,storage:"pandamium:supporters",nbt:'import.users[{patreon_id:"$(patreon_id)"}].patreon_name'},"?",{color:"gray",text:"\n($(patreon_id))?"}]
function do:text/resolve
data modify storage pandamium:local functions."pandamium:supporters/set_owner/*".dialog.body[1].contents set from storage do:io output

function pandamium:utils/show_dialog with storage pandamium:local functions."pandamium:supporters/set_owner/*"
