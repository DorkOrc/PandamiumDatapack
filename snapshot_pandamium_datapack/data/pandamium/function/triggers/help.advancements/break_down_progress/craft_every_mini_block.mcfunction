data modify storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog set value {\
  "type": "minecraft:notice",\
  "title": "Advancement Progress",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        "You have crafted ",\
        {bold:true,text:"???"},\
        " out of ",\
        {bold:true,text:"???"},\
        [" mini blocks for ",{bold:true,text:"Minicraft: Pandamium Edition"},"!"]\
      ],\
      "width": 500\
    }\
  ]\
}
execute if score <total_missing> variable matches 1.. run data modify storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents append value [{italic:true,text:"\nThe "},"???",{italic:true,text:" remaining mini blocks to craft are:"}]

execute store result storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[1].text int 1 run scoreboard players get <total_completed> variable
execute store result storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[3].text int 1 run scoreboard players get <goal> variable
execute store result storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[-1][1] int 1 run scoreboard players get <total_missing> variable
data modify storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[1].text set string storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[1].text
data modify storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[3].text set string storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[3].text
data modify storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[-1][1] set string storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body[0].contents[-1][1]

data modify storage pandamium:local functions."pandamium:triggers/help.advancements/*".dialog.body append from storage pandamium:local functions."pandamium:triggers/help.advancements/main".missing[]

function pandamium:utils/show_dialog with storage pandamium:local functions."pandamium:triggers/help.advancements/*"
