data modify storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog set value {\
  "type": "minecraft:notice",\
  "title": "Advancement Progress",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        "You have visited ",\
        {bold:true,text:"???"},\
        " out of ",\
        {bold:true,text:"???"},\
        [" biomes for ",{bold:true,text:"Adventuring Time"},"!\n",{italic:true,text:"The "}],\
        {italic:true,bold:true,text:"???"},\
        {italic:true,text:" remaining biomes to visit are:"}\
      ],\
      "width": 400\
    }\
  ]\
}

execute store result storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[1].text int 1 run scoreboard players get <total_completed> variable
execute store result storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[3].text int 1 run scoreboard players get <goal> variable
execute store result storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[5].text int 1 run scoreboard players get <total_missing> variable
data modify storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[1].text set string storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[1].text
data modify storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[3].text set string storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[3].text
data modify storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[5].text set string storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[5].text

data modify storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body append from storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing[]

function pandamium:utils/show_dialog with storage pandamium:local functions."pandamium:triggers/help.advancements/*"
