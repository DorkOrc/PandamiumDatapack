# arguments: trigger_id, section

tellraw @s [{text:""},{text:"Custom Gradients:",bold:true,color:"aqua"}]

$tellraw @s [{text:""},\
    {text:"Left:\n ",color:"aqua"},\
        {text:"█",color:"#FF7F7F",insertion:"#FF7F7F",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#FF7F7F"},{text:"Light Red",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -127"}},\
        {text:"█",color:"#FFBF7F",insertion:"#FFBF7F",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#FFBF7F"},{text:"Light Orange",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -128"}},\
        {text:"█",color:"#FFFF7F",insertion:"#FFFF7F",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#FFFF7F"},{text:"Light Yellow",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -129"}},\
        {text:"█",color:"#D7FF7F",insertion:"#D7FF7F",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#D7FF7F"},{text:"Light Chartreuse",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -130"}},\
        {text:"█",color:"#7FFF7F",insertion:"#7FFF7F",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#7FFF7F"},{text:"Light Green",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -131"}},\
        {text:"█",color:"#7FFFD4",insertion:"#7FFFD4",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#7FFFD4"},{text:"Light Mint",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -132"}},\
        {text:"█",color:"#7FFFFF",insertion:"#7FFFFF",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#7FFFFF"},{text:"Light Cyan",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -133"}},\
        {text:"█",color:"#7FBFFF",insertion:"#7FBFFF",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#7FBFFF"},{text:"Light Azure",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -134"}},\
        {text:"█",color:"#7F7FFF",insertion:"#7F7FFF",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#7F7FFF"},{text:"Light Blue",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -135"}},\
        {text:"█",color:"#CB7FFF",insertion:"#CB7FFF",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#CB7FFF"},{text:"Light Violet",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -136"}},\
        {text:"█",color:"#FF7FFF",insertion:"#FF7FFF",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#FF7FFF"},{text:"Light Magenta",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -137"}},\
        {text:"█",color:"#FF7FBF",insertion:"#FF7FBF",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#FF7FBF"},{text:"Light Rose",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -138"}},\
        {text:"█",color:"#C29271",insertion:"#C29271",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#C29271"},{text:"Light Brown",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -144"}},\
        {text:"█",color:"#BFBFBF",insertion:"#BFBFBF",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#BFBFBF"},{text:"Light Grey",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -139"}},\
        {text:"█",color:"#FFFFFF",insertion:"#FFFFFF",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#FFFFFF"},{text:"White",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -141"}},\
    {text:"\n "},\
        {text:"█",color:"#FF0000",insertion:"#FF0000",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#FF0000"},{text:"Red",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -101"}},\
        {text:"█",color:"#FF7F00",insertion:"#FF7F00",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#FF7F00"},{text:"Orange",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -102"}},\
        {text:"█",color:"#FFFF00",insertion:"#FFFF00",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#FFFF00"},{text:"Yellow",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -103"}},\
        {text:"█",color:"#B0FF00",insertion:"#B0FF00",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#B0FF00"},{text:"Chartreuse",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -104"}},\
        {text:"█",color:"#00FF00",insertion:"#00FF00",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#00FF00"},{text:"Green",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -105"}},\
        {text:"█",color:"#00FFA9",insertion:"#00FFA9",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#00FFA9"},{text:"Mint",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -106"}},\
        {text:"█",color:"#00FFFF",insertion:"#00FFFF",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#00FFFF"},{text:"Cyan",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -107"}},\
        {text:"█",color:"#007FFF",insertion:"#007FFF",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#007FFF"},{text:"Azure",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -108"}},\
        {text:"█",color:"#0000FF",insertion:"#0000FF",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#0000FF"},{text:"Blue",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -109"}},\
        {text:"█",color:"#9700FF",insertion:"#9700FF",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#9700FF"},{text:"Violet",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -110"}},\
        {text:"█",color:"#FF00FF",insertion:"#FF00FF",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#FF00FF"},{text:"Magenta",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -111"}},\
        {text:"█",color:"#FF007F",insertion:"#FF007F",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#FF007F"},{text:"Rose",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -112"}},\
        {text:"█",color:"#8E5E3D",insertion:"#8E5E3D",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#8E5E3D"},{text:"Brown",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -142"}},\
        {text:"█",color:"#7F7F7F",insertion:"#7F7F7F",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#7F7F7F"},{text:"Grey",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -113"}},\
    {text:"\n "},\
        {text:"█",color:"#7F0000",insertion:"#7F0000",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#7F0000"},{text:"Dark Red",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -114"}},\
        {text:"█",color:"#7F3F00",insertion:"#7F3F00",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#7F3F00"},{text:"Dark Orange",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -115"}},\
        {text:"█",color:"#7F7F00",insertion:"#7F7F00",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#7F7F00"},{text:"Dark Yellow",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -116"}},\
        {text:"█",color:"#587F00",insertion:"#587F00",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#587F00"},{text:"Dark Chartreuse",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -117"}},\
        {text:"█",color:"#007F00",insertion:"#007F00",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#007F00"},{text:"Dark Green",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -118"}},\
        {text:"█",color:"#007F54",insertion:"#007F54",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#007F54"},{text:"Dark Mint",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -119"}},\
        {text:"█",color:"#007F7F",insertion:"#007F7F",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#007F7F"},{text:"Dark Cyan",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -120"}},\
        {text:"█",color:"#003F7F",insertion:"#003F7F",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#003F7F"},{text:"Dark Azure",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -121"}},\
        {text:"█",color:"#00007F",insertion:"#00007F",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#00007F"},{text:"Dark Blue",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -122"}},\
        {text:"█",color:"#4B007F",insertion:"#4B007F",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#4B007F"},{text:"Dark Violet",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -123"}},\
        {text:"█",color:"#7F007F",insertion:"#7F007F",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#7F007F"},{text:"Dark Magenta",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -124"}},\
        {text:"█",color:"#7F003F",insertion:"#7F003F",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#7F003F"},{text:"Dark Rose",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -125"}},\
        {text:"█",color:"#492C18",insertion:"#492C18",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#492C18"},{text:"Dark Brown",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -143"}},\
        {text:"█",color:"#3F3F3F",insertion:"#3F3F3F",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#3F3F3F"},{text:"Dark Grey",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -126"}},\
        {text:"█",color:"#000000",insertion:"#000000",hover_event:{action:"show_text",value:[{text:"Click to pick left colour ",color:"#1F1F1F"},{text:"Black",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -140"}},\
    ]

tellraw @s " →"

$tellraw @s [{text:""},\
    {text:"Right:\n ",color:"aqua"},\
        {text:"█",color:"#FF7F7F",insertion:"#FF7F7F",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#FF7F7F"},{text:"Light Red",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)227"}},\
        {text:"█",color:"#FFBF7F",insertion:"#FFBF7F",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#FFBF7F"},{text:"Light Orange",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)228"}},\
        {text:"█",color:"#FFFF7F",insertion:"#FFFF7F",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#FFFF7F"},{text:"Light Yellow",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)229"}},\
        {text:"█",color:"#D7FF7F",insertion:"#D7FF7F",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#D7FF7F"},{text:"Light Chartreuse",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)230"}},\
        {text:"█",color:"#7FFF7F",insertion:"#7FFF7F",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#7FFF7F"},{text:"Light Green",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)231"}},\
        {text:"█",color:"#7FFFD4",insertion:"#7FFFD4",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#7FFFD4"},{text:"Light Mint",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)232"}},\
        {text:"█",color:"#7FFFFF",insertion:"#7FFFFF",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#7FFFFF"},{text:"Light Cyan",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)233"}},\
        {text:"█",color:"#7FBFFF",insertion:"#7FBFFF",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#7FBFFF"},{text:"Light Azure",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)234"}},\
        {text:"█",color:"#7F7FFF",insertion:"#7F7FFF",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#7F7FFF"},{text:"Light Blue",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)235"}},\
        {text:"█",color:"#CB7FFF",insertion:"#CB7FFF",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#CB7FFF"},{text:"Light Violet",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)236"}},\
        {text:"█",color:"#FF7FFF",insertion:"#FF7FFF",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#FF7FFF"},{text:"Light Magenta",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)237"}},\
        {text:"█",color:"#FF7FBF",insertion:"#FF7FBF",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#FF7FBF"},{text:"Light Rose",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)238"}},\
        {text:"█",color:"#C29271",insertion:"#C29271",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#C29271"},{text:"Light Brown",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)244"}},\
        {text:"█",color:"#BFBFBF",insertion:"#BFBFBF",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#BFBFBF"},{text:"Light Grey",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)239"}},\
        {text:"█",color:"#FFFFFF",insertion:"#FFFFFF",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#FFFFFF"},{text:"White",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)241"}},\
    {text:"\n "},\
        {text:"█",color:"#FF0000",insertion:"#FF0000",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#FF0000"},{text:"Red",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)201"}},\
        {text:"█",color:"#FF7F00",insertion:"#FF7F00",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#FF7F00"},{text:"Orange",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)202"}},\
        {text:"█",color:"#FFFF00",insertion:"#FFFF00",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#FFFF00"},{text:"Yellow",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)203"}},\
        {text:"█",color:"#B0FF00",insertion:"#B0FF00",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#B0FF00"},{text:"Chartreuse",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)204"}},\
        {text:"█",color:"#00FF00",insertion:"#00FF00",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#00FF00"},{text:"Green",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)205"}},\
        {text:"█",color:"#00FFA9",insertion:"#00FFA9",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#00FFA9"},{text:"Mint",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)206"}},\
        {text:"█",color:"#00FFFF",insertion:"#00FFFF",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#00FFFF"},{text:"Cyan",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)207"}},\
        {text:"█",color:"#007FFF",insertion:"#007FFF",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#007FFF"},{text:"Azure",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)208"}},\
        {text:"█",color:"#0000FF",insertion:"#0000FF",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#0000FF"},{text:"Blue",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)209"}},\
        {text:"█",color:"#9700FF",insertion:"#9700FF",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#9700FF"},{text:"Violet",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)210"}},\
        {text:"█",color:"#FF00FF",insertion:"#FF00FF",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#FF00FF"},{text:"Magenta",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)211"}},\
        {text:"█",color:"#FF007F",insertion:"#FF007F",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#FF007F"},{text:"Rose",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)212"}},\
        {text:"█",color:"#8E5E3D",insertion:"#8E5E3D",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#8E5E3D"},{text:"Brown",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)242"}},\
        {text:"█",color:"#7F7F7F",insertion:"#7F7F7F",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#7F7F7F"},{text:"Grey",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)213"}},\
    {text:"\n "},\
        {text:"█",color:"#7F0000",insertion:"#7F0000",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#7F0000"},{text:"Dark Red",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)214"}},\
        {text:"█",color:"#7F3F00",insertion:"#7F3F00",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#7F3F00"},{text:"Dark Orange",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)215"}},\
        {text:"█",color:"#7F7F00",insertion:"#7F7F00",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#7F7F00"},{text:"Dark Yellow",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)216"}},\
        {text:"█",color:"#587F00",insertion:"#587F00",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#587F00"},{text:"Dark Chartreuse",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)217"}},\
        {text:"█",color:"#007F00",insertion:"#007F00",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#007F00"},{text:"Dark Green",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)218"}},\
        {text:"█",color:"#007F54",insertion:"#007F54",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#007F54"},{text:"Dark Mint",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)219"}},\
        {text:"█",color:"#007F7F",insertion:"#007F7F",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#007F7F"},{text:"Dark Cyan",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)220"}},\
        {text:"█",color:"#003F7F",insertion:"#003F7F",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#003F7F"},{text:"Dark Azure",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)221"}},\
        {text:"█",color:"#00007F",insertion:"#00007F",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#00007F"},{text:"Dark Blue",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)222"}},\
        {text:"█",color:"#4B007F",insertion:"#4B007F",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#4B007F"},{text:"Dark Violet",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)223"}},\
        {text:"█",color:"#7F007F",insertion:"#7F007F",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#7F007F"},{text:"Dark Magenta",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)224"}},\
        {text:"█",color:"#7F003F",insertion:"#7F003F",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#7F003F"},{text:"Dark Rose",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)225"}},\
        {text:"█",color:"#492C18",insertion:"#492C18",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#492C18"},{text:"Dark Brown",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)243"}},\
        {text:"█",color:"#3F3F3F",insertion:"#3F3F3F",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#3F3F3F"},{text:"Dark Grey",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)226"}},\
        {text:"█",color:"#000000",insertion:"#000000",hover_event:{action:"show_text",value:[{text:"Click to pick right colour ",color:"#1F1F1F"},{text:"Black",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)240"}},\
    ]

tellraw @s [{text:"\n",color:"green",hover_event:{action:"show_text",value:[{text:"",color:"green"},{text:"To choose a colour gradient:",color:"aqua"},{text:"\n1. Pick a "},{text:"left colour",color:"aqua"},{text:" from the "},{text:"top palette",underlined:true},{text:"\n2. Pick the "},{text:"right colour",color:"aqua"},{text:" from the "},{text:"bottom palette",underlined:true},{text:".\n\n"},{text:"The left colour you choose will be remembered, and the gradient will be automatically generated once you pick the right colour.",color:"gray"}]}},{text:"ℹ",color:"blue"},{text:" Hover here to "},{text:"learn how to choose a colour gradient",color:"aqua"},{text:"!"}]
