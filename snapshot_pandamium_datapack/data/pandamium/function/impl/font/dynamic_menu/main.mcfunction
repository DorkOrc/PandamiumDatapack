# arguments: trigger_id, section

# generate random gradient for "Gradients" button
execute store result score <start_red> variable store result score <end_red> variable run random value 0..191
execute store result score <start_green> variable store result score <end_green> variable run random value 0..191
execute store result score <start_blue> variable store result score <end_blue> variable run random value 0..191
scoreboard players add <end_red> variable 90
scoreboard players add <end_green> variable 90
scoreboard players add <end_blue> variable 90
scoreboard players operation <end_red> variable %= #191 constant
scoreboard players operation <end_green> variable %= #191 constant
scoreboard players operation <end_blue> variable %= #191 constant
scoreboard players add <start_red> variable 64
scoreboard players add <start_green> variable 64
scoreboard players add <start_blue> variable 64
scoreboard players add <end_red> variable 64
scoreboard players add <end_green> variable 64
scoreboard players add <end_blue> variable 64
data modify storage pandamium:text compound set value {text:"[Gradients]"}
function pandamium:impl/font/custom_styles/gradient/main
# -> storage pandamium:text compound

# print menu
$tellraw @s [{text:"",color:"aqua"},\
        {text:"",extra:[{text:"Bold",bold:true},{text:": "},{text:"[False]",color:"red",hover_event:{action:"show_text",value:[{text:"Click to disable ",color:"red"},{text:"Bold",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)011"}},{text:" "},{text:"[True]",color:"green",hover_event:{action:"show_text",value:[{text:"Click to enable ",color:"green"},{text:"Bold",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)001"}}]},{text:"\n"},\
        {text:"",extra:[{text:"Italic",italic:true},{text:": "},{text:"[False]",color:"red",hover_event:{action:"show_text",value:[{text:"Click to disable ",color:"red"},{text:"Italic",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)012"}},{text:" "},{text:"[True]",color:"green",hover_event:{action:"show_text",value:[{text:"Click to enable ",color:"green"},{text:"Italic",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)002"}}]},{text:"\n"},\
        {text:"",extra:[{text:"Underlined",underlined:true},{text:": "},{text:"[False]",color:"red",hover_event:{action:"show_text",value:[{text:"Click to disable ",color:"red"},{text:"Underlined",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)013"}},{text:" "},{text:"[True]",color:"green",hover_event:{action:"show_text",value:[{text:"Click to enable ",color:"green"},{text:"Underlined",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)003"}}]},{text:"\n"},\
        {text:"",extra:[{text:"Strikethrough",strikethrough:true},{text:": "},{text:"[False]",color:"red",hover_event:{action:"show_text",value:[{text:"Click to disable ",color:"red"},{text:"Strikethrough",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)014"}},{text:" "},{text:"[True]",color:"green",hover_event:{action:"show_text",value:[{text:"Click to enable ",color:"green"},{text:"Strikethrough",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)004"}}]},\
    ]
$tellraw @s[scores={sign_font=1..}] [{text:"",color:"aqua"},\
        {text:"",extra:[{text:"Obfuscated ("},{text:"AAA",obfuscated:true},{text:"): "},{text:"[False]",color:"red",hover_event:{action:"show_text",value:[{text:"Click to disable ",color:"red"},{text:"Obfuscated",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)015"}},{text:" "},{text:"[True]",color:"green",hover_event:{action:"show_text",value:[{text:"Click to enable ",color:"green"},{text:"Obfuscated",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)005"}}]},\
    ]

$tellraw @s [{text:"",color:"aqua"},\
    {text:"Font: "},\
        {text:"[Default]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to pick font ",color:"blue"},{text:"Default",bold:true},{text:"\n\nThis may look different to each player depending on their resource packs and language font options",color:"gray"}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)021"}},{text:" "},\
        {text:"[",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to pick font ",color:"blue"},{text:"Uniform",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)022"},extra:[{text:"Uniform",font:"uniform",bold:true},{text:"]"}]},{text:" "},\
        {text:"[",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to pick font ",color:"blue"},{text:"Standard Galactic Alphabet",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)023"},extra:[{text:"bntz",font:"alt"},{text:"]"}]},{text:" "},\
        {text:"[",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to pick font ",color:"blue"},{text:"Illager Runes",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)024"},extra:[{text:"dmqe",font:"illageralt"},{text:"]"}]},\
    ]

tellraw @s[scores={item_font=1..}] [{text:"",color:"aqua"},{text:"Lore"},{text:": "},{text:"[Line 1]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Click to swap the name with ",color:"dark_purple"},{text:"Lore Line 1",bold:true}]},click_event:{action:"run_command",command:"trigger item_font set -1"}},{text:" "},{text:"[Line 2]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Click to swap the name with ",color:"dark_purple"},{text:"Lore Line 2",bold:true}]},click_event:{action:"run_command",command:"trigger item_font set -2"}},{text:" "},{text:"[Line 3]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Click to swap the name with ",color:"dark_purple"},{text:"Lore Line 3",bold:true}]},click_event:{action:"run_command",command:"trigger item_font set -3"}},{text:" "},{text:"[Line 4]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Click to swap the name with ",color:"dark_purple"},{text:"Lore Line 4",bold:true}]},click_event:{action:"run_command",command:"trigger item_font set -4"}}]

$execute in pandamium:staff_world run tellraw @s [{text:"",color:"aqua"},\
    {text:"Colour:\n ",color:"aqua"},\
        {text:"█",color:"#FF7F7F",insertion:"#FF7F7F",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#FF7F7F"},{text:"Light Red",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)127"}},\
        {text:"█",color:"#FFBF7F",insertion:"#FFBF7F",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#FFBF7F"},{text:"Light Orange",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)128"}},\
        {text:"█",color:"#FFFF7F",insertion:"#FFFF7F",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#FFFF7F"},{text:"Light Yellow",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)129"}},\
        {text:"█",color:"#D7FF7F",insertion:"#D7FF7F",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#D7FF7F"},{text:"Light Chartreuse",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)130"}},\
        {text:"█",color:"#7FFF7F",insertion:"#7FFF7F",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#7FFF7F"},{text:"Light Green",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)131"}},\
        {text:"█",color:"#7FFFD4",insertion:"#7FFFD4",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#7FFFD4"},{text:"Light Mint",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)132"}},\
        {text:"█",color:"#7FFFFF",insertion:"#7FFFFF",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#7FFFFF"},{text:"Light Cyan",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)133"}},\
        {text:"█",color:"#7FBFFF",insertion:"#7FBFFF",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#7FBFFF"},{text:"Light Azure",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)134"}},\
        {text:"█",color:"#7F7FFF",insertion:"#7F7FFF",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#7F7FFF"},{text:"Light Blue",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)135"}},\
        {text:"█",color:"#CB7FFF",insertion:"#CB7FFF",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#CB7FFF"},{text:"Light Violet",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)136"}},\
        {text:"█",color:"#FF7FFF",insertion:"#FF7FFF",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#FF7FFF"},{text:"Light Magenta",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)137"}},\
        {text:"█",color:"#FF7FBF",insertion:"#FF7FBF",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#FF7FBF"},{text:"Light Rose",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)138"}},\
        {text:"█",color:"#C29271",insertion:"#C29271",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#C29271"},{text:"Light Brown",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)144"}},\
        {text:"█",color:"#BFBFBF",insertion:"#BFBFBF",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#BFBFBF"},{text:"Light Grey",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)139"}},\
        {text:"█",color:"#FFFFFF",insertion:"#FFFFFF",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#FFFFFF"},{text:"White",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)141"}},\
    {text:"\n "},\
        {text:"█",color:"#FF0000",insertion:"#FF0000",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#FF0000"},{text:"Red",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)101"}},\
        {text:"█",color:"#FF7F00",insertion:"#FF7F00",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#FF7F00"},{text:"Orange",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)102"}},\
        {text:"█",color:"#FFFF00",insertion:"#FFFF00",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#FFFF00"},{text:"Yellow",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)103"}},\
        {text:"█",color:"#B0FF00",insertion:"#B0FF00",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#B0FF00"},{text:"Chartreuse",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)104"}},\
        {text:"█",color:"#00FF00",insertion:"#00FF00",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#00FF00"},{text:"Green",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)105"}},\
        {text:"█",color:"#00FFA9",insertion:"#00FFA9",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#00FFA9"},{text:"Mint",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)106"}},\
        {text:"█",color:"#00FFFF",insertion:"#00FFFF",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#00FFFF"},{text:"Cyan",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)107"}},\
        {text:"█",color:"#007FFF",insertion:"#007FFF",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#007FFF"},{text:"Azure",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)108"}},\
        {text:"█",color:"#0000FF",insertion:"#0000FF",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#0000FF"},{text:"Blue",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)109"}},\
        {text:"█",color:"#9700FF",insertion:"#9700FF",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#9700FF"},{text:"Violet",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)110"}},\
        {text:"█",color:"#FF00FF",insertion:"#FF00FF",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#FF00FF"},{text:"Magenta",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)111"}},\
        {text:"█",color:"#FF007F",insertion:"#FF007F",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#FF007F"},{text:"Rose",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)112"}},\
        {text:"█",color:"#8E5E3D",insertion:"#8E5E3D",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#8E5E3D"},{text:"Brown",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)142"}},\
        {text:"█",color:"#7F7F7F",insertion:"#7F7F7F",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#7F7F7F"},{text:"Grey",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)113"}},\
    {text:"\n "},\
        {text:"█",color:"#7F0000",insertion:"#7F0000",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#7F0000"},{text:"Dark Red",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)114"}},\
        {text:"█",color:"#7F3F00",insertion:"#7F3F00",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#7F3F00"},{text:"Dark Orange",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)115"}},\
        {text:"█",color:"#7F7F00",insertion:"#7F7F00",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#7F7F00"},{text:"Dark Yellow",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)116"}},\
        {text:"█",color:"#587F00",insertion:"#587F00",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#587F00"},{text:"Dark Chartreuse",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)117"}},\
        {text:"█",color:"#007F00",insertion:"#007F00",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#007F00"},{text:"Dark Green",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)118"}},\
        {text:"█",color:"#007F54",insertion:"#007F54",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#007F54"},{text:"Dark Mint",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)119"}},\
        {text:"█",color:"#007F7F",insertion:"#007F7F",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#007F7F"},{text:"Dark Cyan",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)120"}},\
        {text:"█",color:"#003F7F",insertion:"#003F7F",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#003F7F"},{text:"Dark Azure",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)121"}},\
        {text:"█",color:"#00007F",insertion:"#00007F",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#00007F"},{text:"Dark Blue",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)122"}},\
        {text:"█",color:"#4B007F",insertion:"#4B007F",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#4B007F"},{text:"Dark Violet",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)123"}},\
        {text:"█",color:"#7F007F",insertion:"#7F007F",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#7F007F"},{text:"Dark Magenta",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)124"}},\
        {text:"█",color:"#7F003F",insertion:"#7F003F",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#7F003F"},{text:"Dark Rose",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)125"}},\
        {text:"█",color:"#492C18",insertion:"#492C18",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#492C18"},{text:"Dark Brown",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)143"}},\
        {text:"█",color:"#3F3F3F",insertion:"#3F3F3F",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#3F3F3F"},{text:"Dark Grey",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)126"}},\
        {text:"█",color:"#000000",insertion:"#000000",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#1F1F1F"},{text:"Black",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)140"}},\
    {text:"\n "},\
        {text:"[Reset]",color:"white",hover_event:{action:"show_text",value:[{text:"Click to reset any colour and custom styles",color:"white"}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)031"}},{text:" "},\
        {nbt:"font.menu.custom_styles.rainbow.button",storage:"pandamium:dictionary",interpret:true,hover_event:{action:"show_text",value:{nbt:"font.menu.custom_styles.rainbow.hover_event",storage:"pandamium:dictionary",interpret:true}},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)032"}},{text:" "},\
        {storage:"pandamium:text",nbt:"compound",interpret:true,hover_event:{action:"show_text",value:{nbt:"font.menu.custom_gradients_page.hover_event",storage:"pandamium:dictionary",interpret:true}},click_event:{action:"run_command",command:"trigger $(trigger_id) set 10$(section)"}},\
    ]

$tellraw @s[scores={staff_perms=3..,sign_font=1..},predicate=pandamium:in_spawn] [{text:""},\
    {text:"Spawn Area Sign Colours:\n ",color:"aqua"},\
        {text:"█",color:"yellow",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"yellow"},{text:"Yellow (Helper)",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)180"}},\
        {text:"█",color:"gold",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"gold"},{text:"Gold (Moderator)",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)181"}},\
        {text:"█",color:"#FB6F00",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#FB6F00"},{text:"Orange (Sr. Moderator)",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)182"}},\
        {text:"█",color:"red",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"red"},{text:"Red (Admin)",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)183"}},\
        {text:"█",color:"dark_red",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"dark_red"},{text:"Dark Red (Owner)",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)184"}},\
        {text:"█",color:"green",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"green"},{text:"Green (Player)",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)185"}},\
        {text:"█",color:"dark_green",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"dark_green"},{text:"Dark Green (Member)",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)186"}},\
        {text:"█",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"aqua"},{text:"Aqua (Elder)",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)187"}},\
        {text:"█",color:"dark_aqua",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"dark_aqua"},{text:"Dark Aqua (Veteran)",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)188"}},\
        {text:"█",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"blue"},{text:"Blue (Elite)",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)189"}},\
        {text:"█",color:"dark_blue",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"dark_blue"},{text:"Dark Blue (VIP)",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)190"}},\
        {text:"█",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"dark_purple"},{text:"Dark Purple (Supporter)",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)191"}},\
        {text:"█",color:"#00CE73",hover_event:{action:"show_text",value:[{text:"Click to pick colour ",color:"#00CE73"},{text:"Turquoise (FAQs)",bold:true}]},click_event:{action:"run_command",command:"trigger $(trigger_id) set -$(section)192"}},\
    ]
