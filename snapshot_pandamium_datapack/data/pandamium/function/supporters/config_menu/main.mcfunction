data modify storage pandamium:local functions."pandamium:supporters/config_menu.*" set value {}
data modify storage pandamium:local functions."pandamium:supporters/config_menu.*".dialog set value {\
  "type": "minecraft:notice",\
  "title": "Supporters",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "text": "Supporter List:",\
        "bold": true,\
        "underlined": true\
      }\
    }\
  ],\
  "action": {\
    "label": {\
      "translate": "gui.done"\
    }\
  }\
}

data modify storage pandamium:local functions."pandamium:supporters/config_menu.*".users set from storage pandamium:supporters import.users
execute if data storage pandamium:local functions."pandamium:supporters/config_menu.*".users[0] run function pandamium:supporters/config_menu/loop with storage pandamium:local functions."pandamium:supporters/config_menu.*".users[-1]

function pandamium:utils/show_dialog with storage pandamium:local functions."pandamium:supporters/config_menu.*"
