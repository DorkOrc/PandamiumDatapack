# arguments: dialog_name, reward_id

$data modify storage pandamium:rewards_shop dialogs.$(dialog_name).dialog.body append value \
{\
  "type": "minecraft:item",\
  "item": {\
    "id": "minecraft:barrier"\
  },\
  "description": [\
    "",\
    {\
      "text": "{name}",\
      "bold": true\
    },\
    [\
        {\
          "text": "\n",\
          "color": "white"\
        },\
        {\
          "text": "[Buy for ","extra":[" reward credit(s)]"],\
          "hover_event": {\
            "action": "show_text",\
            "value": [\
              {\
                "text": "Click to buy ",\
                "color": "white"\
              }\
            ]\
          },\
          "click_event": {\
            "action": "run_command",\
            "command": "trigger vote_shop set {reward_index}"\
          }\
        }\
    ],\
    "\n                               "\
  ],\
  "show_decorations": true,\
  "show_tooltip": true,\
  "width": 20,\
  "height": 20\
}

data modify storage pandamium:local functions."pandamium:startup/rewards_shop/load_pages/*" set value {}
function pandamium:startup/rewards_shop/load_pages/set_click_event with storage pandamium:rewards_shop rewards[{reward_id:"random_player_head"}]
$data modify storage pandamium:rewards_shop dialogs.$(dialog_name).dialog.body[-1].description[2][1].click_event set from storage pandamium:local functions."pandamium:startup/rewards_shop/load_pages/*".click_event
$data modify storage pandamium:rewards_shop dialogs.$(dialog_name).dialog.body[-1].item set from storage pandamium:rewards_shop rewards[{reward_id:"random_player_head"}].icon
$data modify storage pandamium:rewards_shop dialogs.$(dialog_name).dialog.body[-1].description[1] set from storage pandamium:rewards_shop rewards[{reward_id:"random_player_head"}].name
$data modify storage pandamium:rewards_shop dialogs.$(dialog_name).dialog.body[-1].description[1].bold set value true
$data remove storage pandamium:rewards_shop dialogs.$(dialog_name).dialog.body[-1].description[1].extra[].hover_event
$data remove storage pandamium:rewards_shop dialogs.$(dialog_name).dialog.body[-1].description[1].with[].hover_event
$data modify storage pandamium:rewards_shop dialogs.$(dialog_name).dialog.body[-1].description[2][1].hover_event.value append from storage pandamium:rewards_shop rewards[{reward_id:"random_player_head"}].name
$data modify storage pandamium:rewards_shop dialogs.$(dialog_name).dialog.body[-1].description[2][1].extra prepend string storage pandamium:rewards_shop rewards[{reward_id:"random_player_head"}].cost
