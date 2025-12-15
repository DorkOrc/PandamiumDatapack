data modify storage pandamium:dictionary flair_menu set value {\
    type: "minecraft:multi_action",\
    title: "Flairs",\
    body: [\
        {\
            type: "minecraft:plain_message",\
            contents: {\
                color: "white",\
                text: "\n\nFlairs let you put a colourful emoji or symbol next to your name so that you can stand out more in chat, Discord, and the tab-list!"\
            },\
            width: 400\
        },\
        {\
            __preview__: true,\
            type: "minecraft:plain_message",\
            contents: [\
                "",\
                {\
                    color: "gray",\
                    italic: true,\
                    text: "Preview: "\
                },\
                {\
                    __preview__: true\
                }\
            ]\
        },\
        {\
            type: "minecraft:plain_message",\
            contents: ["",\
                    {color:"#FF7F7F",text:"█",insertion:"#FF7F7F",hover_event:{action:"show_text",value:[{color:"#FF7F7F",text:"Click to pick flair colour "},{bold:true,text:"Light Red"}]},click_event:{action:"run_command",command:"trigger flair set -127"}},\
                    {color:"#FFBF7F",text:"█",insertion:"#FFBF7F",hover_event:{action:"show_text",value:[{color:"#FFBF7F",text:"Click to pick flair colour "},{bold:true,text:"Light Orange"}]},click_event:{action:"run_command",command:"trigger flair set -128"}},\
                    {color:"#FFFF7F",text:"█",insertion:"#FFFF7F",hover_event:{action:"show_text",value:[{color:"#FFFF7F",text:"Click to pick flair colour "},{bold:true,text:"Light Yellow"}]},click_event:{action:"run_command",command:"trigger flair set -129"}},\
                    {color:"#D7FF7F",text:"█",insertion:"#D7FF7F",hover_event:{action:"show_text",value:[{color:"#D7FF7F",text:"Click to pick flair colour "},{bold:true,text:"Light Chartreuse"}]},click_event:{action:"run_command",command:"trigger flair set -130"}},\
                    {color:"#7FFF7F",text:"█",insertion:"#7FFF7F",hover_event:{action:"show_text",value:[{color:"#7FFF7F",text:"Click to pick flair colour "},{bold:true,text:"Light Green"}]},click_event:{action:"run_command",command:"trigger flair set -131"}},\
                    {color:"#7FFFD4",text:"█",insertion:"#7FFFD4",hover_event:{action:"show_text",value:[{color:"#7FFFD4",text:"Click to pick flair colour "},{bold:true,text:"Light Mint"}]},click_event:{action:"run_command",command:"trigger flair set -132"}},\
                    {color:"#7FFFFF",text:"█",insertion:"#7FFFFF",hover_event:{action:"show_text",value:[{color:"#7FFFFF",text:"Click to pick flair colour "},{bold:true,text:"Light Cyan"}]},click_event:{action:"run_command",command:"trigger flair set -133"}},\
                    {color:"#7FBFFF",text:"█",insertion:"#7FBFFF",hover_event:{action:"show_text",value:[{color:"#7FBFFF",text:"Click to pick flair colour "},{bold:true,text:"Light Azure"}]},click_event:{action:"run_command",command:"trigger flair set -134"}},\
                    {color:"#7F7FFF",text:"█",insertion:"#7F7FFF",hover_event:{action:"show_text",value:[{color:"#7F7FFF",text:"Click to pick flair colour "},{bold:true,text:"Light Blue"}]},click_event:{action:"run_command",command:"trigger flair set -135"}},\
                    {color:"#CB7FFF",text:"█",insertion:"#CB7FFF",hover_event:{action:"show_text",value:[{color:"#CB7FFF",text:"Click to pick flair colour "},{bold:true,text:"Light Violet"}]},click_event:{action:"run_command",command:"trigger flair set -136"}},\
                    {color:"#FF7FFF",text:"█",insertion:"#FF7FFF",hover_event:{action:"show_text",value:[{color:"#FF7FFF",text:"Click to pick flair colour "},{bold:true,text:"Light Magenta"}]},click_event:{action:"run_command",command:"trigger flair set -137"}},\
                    {color:"#FF7FBF",text:"█",insertion:"#FF7FBF",hover_event:{action:"show_text",value:[{color:"#FF7FBF",text:"Click to pick flair colour "},{bold:true,text:"Light Rose"}]},click_event:{action:"run_command",command:"trigger flair set -138"}},\
                    {color:"#C29271",text:"█",insertion:"#C29271",hover_event:{action:"show_text",value:[{color:"#C29271",text:"Click to pick flair colour "},{bold:true,text:"Light Brown"}]},click_event:{action:"run_command",command:"trigger flair set -144"}},\
                    {color:"#BFBFBF",text:"█",insertion:"#BFBFBF",hover_event:{action:"show_text",value:[{color:"#BFBFBF",text:"Click to pick flair colour "},{bold:true,text:"Light Grey"}]},click_event:{action:"run_command",command:"trigger flair set -139"}},\
                    {color:"#FFFFFF",text:"█",insertion:"#FFFFFF",hover_event:{action:"show_text",value:[{color:"#FFFFFF",text:"Click to pick flair colour "},{bold:true,text:"White"}]},click_event:{action:"run_command",command:"trigger flair set -141"}},\
                "\n",\
                    {color:"#FF0000",text:"█",insertion:"#FF0000",hover_event:{action:"show_text",value:[{color:"#FF0000",text:"Click to pick flair colour "},{bold:true,text:"Red"}]},click_event:{action:"run_command",command:"trigger flair set -101"}},\
                    {color:"#FF7F00",text:"█",insertion:"#FF7F00",hover_event:{action:"show_text",value:[{color:"#FF7F00",text:"Click to pick flair colour "},{bold:true,text:"Orange"}]},click_event:{action:"run_command",command:"trigger flair set -102"}},\
                    {color:"#FFFF00",text:"█",insertion:"#FFFF00",hover_event:{action:"show_text",value:[{color:"#FFFF00",text:"Click to pick flair colour "},{bold:true,text:"Yellow"}]},click_event:{action:"run_command",command:"trigger flair set -103"}},\
                    {color:"#B0FF00",text:"█",insertion:"#B0FF00",hover_event:{action:"show_text",value:[{color:"#B0FF00",text:"Click to pick flair colour "},{bold:true,text:"Chartreuse"}]},click_event:{action:"run_command",command:"trigger flair set -104"}},\
                    {color:"#00FF00",text:"█",insertion:"#00FF00",hover_event:{action:"show_text",value:[{color:"#00FF00",text:"Click to pick flair colour "},{bold:true,text:"Green"}]},click_event:{action:"run_command",command:"trigger flair set -105"}},\
                    {color:"#00FFA9",text:"█",insertion:"#00FFA9",hover_event:{action:"show_text",value:[{color:"#00FFA9",text:"Click to pick flair colour "},{bold:true,text:"Mint"}]},click_event:{action:"run_command",command:"trigger flair set -106"}},\
                    {color:"#00FFFF",text:"█",insertion:"#00FFFF",hover_event:{action:"show_text",value:[{color:"#00FFFF",text:"Click to pick flair colour "},{bold:true,text:"Cyan"}]},click_event:{action:"run_command",command:"trigger flair set -107"}},\
                    {color:"#007FFF",text:"█",insertion:"#007FFF",hover_event:{action:"show_text",value:[{color:"#007FFF",text:"Click to pick flair colour "},{bold:true,text:"Azure"}]},click_event:{action:"run_command",command:"trigger flair set -108"}},\
                    {color:"#0000FF",text:"█",insertion:"#0000FF",hover_event:{action:"show_text",value:[{color:"#0000FF",text:"Click to pick flair colour "},{bold:true,text:"Blue"}]},click_event:{action:"run_command",command:"trigger flair set -109"}},\
                    {color:"#9700FF",text:"█",insertion:"#9700FF",hover_event:{action:"show_text",value:[{color:"#9700FF",text:"Click to pick flair colour "},{bold:true,text:"Violet"}]},click_event:{action:"run_command",command:"trigger flair set -110"}},\
                    {color:"#FF00FF",text:"█",insertion:"#FF00FF",hover_event:{action:"show_text",value:[{color:"#FF00FF",text:"Click to pick flair colour "},{bold:true,text:"Magenta"}]},click_event:{action:"run_command",command:"trigger flair set -111"}},\
                    {color:"#FF007F",text:"█",insertion:"#FF007F",hover_event:{action:"show_text",value:[{color:"#FF007F",text:"Click to pick flair colour "},{bold:true,text:"Rose"}]},click_event:{action:"run_command",command:"trigger flair set -112"}},\
                    {color:"#8E5E3D",text:"█",insertion:"#8E5E3D",hover_event:{action:"show_text",value:[{color:"#8E5E3D",text:"Click to pick flair colour "},{bold:true,text:"Brown"}]},click_event:{action:"run_command",command:"trigger flair set -142"}},\
                    {color:"#7F7F7F",text:"█",insertion:"#7F7F7F",hover_event:{action:"show_text",value:[{color:"#7F7F7F",text:"Click to pick flair colour "},{bold:true,text:"Grey"}]},click_event:{action:"run_command",command:"trigger flair set -113"}},\
                    {bold:true,text:"‌‌‌‌‌‌‌‌"},\
                "\n",\
                    {color:"#7F0000",text:"█",insertion:"#7F0000",hover_event:{action:"show_text",value:[{color:"#7F0000",text:"Click to pick flair colour "},{bold:true,text:"Dark Red"}]},click_event:{action:"run_command",command:"trigger flair set -114"}},\
                    {color:"#7F3F00",text:"█",insertion:"#7F3F00",hover_event:{action:"show_text",value:[{color:"#7F3F00",text:"Click to pick flair colour "},{bold:true,text:"Dark Orange"}]},click_event:{action:"run_command",command:"trigger flair set -115"}},\
                    {color:"#7F7F00",text:"█",insertion:"#7F7F00",hover_event:{action:"show_text",value:[{color:"#7F7F00",text:"Click to pick flair colour "},{bold:true,text:"Dark Yellow"}]},click_event:{action:"run_command",command:"trigger flair set -116"}},\
                    {color:"#587F00",text:"█",insertion:"#587F00",hover_event:{action:"show_text",value:[{color:"#587F00",text:"Click to pick flair colour "},{bold:true,text:"Dark Chartreuse"}]},click_event:{action:"run_command",command:"trigger flair set -117"}},\
                    {color:"#007F00",text:"█",insertion:"#007F00",hover_event:{action:"show_text",value:[{color:"#007F00",text:"Click to pick flair colour "},{bold:true,text:"Dark Green"}]},click_event:{action:"run_command",command:"trigger flair set -118"}},\
                    {color:"#007F54",text:"█",insertion:"#007F54",hover_event:{action:"show_text",value:[{color:"#007F54",text:"Click to pick flair colour "},{bold:true,text:"Dark Mint"}]},click_event:{action:"run_command",command:"trigger flair set -119"}},\
                    {color:"#007F7F",text:"█",insertion:"#007F7F",hover_event:{action:"show_text",value:[{color:"#007F7F",text:"Click to pick flair colour "},{bold:true,text:"Dark Cyan"}]},click_event:{action:"run_command",command:"trigger flair set -120"}},\
                    {color:"#003F7F",text:"█",insertion:"#003F7F",hover_event:{action:"show_text",value:[{color:"#003F7F",text:"Click to pick flair colour "},{bold:true,text:"Dark Azure"}]},click_event:{action:"run_command",command:"trigger flair set -121"}},\
                    {color:"#00007F",text:"█",insertion:"#00007F",hover_event:{action:"show_text",value:[{color:"#00007F",text:"Click to pick flair colour "},{bold:true,text:"Dark Blue"}]},click_event:{action:"run_command",command:"trigger flair set -122"}},\
                    {color:"#4B007F",text:"█",insertion:"#4B007F",hover_event:{action:"show_text",value:[{color:"#4B007F",text:"Click to pick flair colour "},{bold:true,text:"Dark Violet"}]},click_event:{action:"run_command",command:"trigger flair set -123"}},\
                    {color:"#7F007F",text:"█",insertion:"#7F007F",hover_event:{action:"show_text",value:[{color:"#7F007F",text:"Click to pick flair colour "},{bold:true,text:"Dark Magenta"}]},click_event:{action:"run_command",command:"trigger flair set -124"}},\
                    {color:"#7F003F",text:"█",insertion:"#7F003F",hover_event:{action:"show_text",value:[{color:"#7F003F",text:"Click to pick flair colour "},{bold:true,text:"Dark Rose"}]},click_event:{action:"run_command",command:"trigger flair set -125"}},\
                    {color:"#492C18",text:"█",insertion:"#492C18",hover_event:{action:"show_text",value:[{color:"#492C18",text:"Click to pick flair colour "},{bold:true,text:"Dark Brown"}]},click_event:{action:"run_command",command:"trigger flair set -143"}},\
                    {color:"#3F3F3F",text:"█",insertion:"#3F3F3F",hover_event:{action:"show_text",value:[{color:"#3F3F3F",text:"Click to pick flair colour "},{bold:true,text:"Dark Grey"}]},click_event:{action:"run_command",command:"trigger flair set -126"}},\
                    {color:"#000000",text:"█",insertion:"#000000",hover_event:{action:"show_text",value:[{color:"#1F1F1F",text:"Click to pick flair colour "},{bold:true,text:"Black"}]},click_event:{action:"run_command",command:"trigger flair set -140"}},\
            ]\
        },\
        {type: "minecraft:plain_message",contents: [{text:"[Reset Colour]",hover_event:{action:"show_text",value:"Click to reset flair colour"},click_event:{action:"run_command",command:"trigger flair set -2"}},"   ",{text:"[Remove Flair]",hover_event:{action:"show_text",value:[{text:"Click to remove your flair"}]},click_event:{action:"run_command",command:"trigger flair set -1"}}]}\
    ],\
    exit_action: {\
        "label": "Done",\
        "action": {\
        "type": "run_command",\
        "command": "/trigger flair set -3"\
        }\
    },\
    pause: false,\
    after_action: "none",\
    columns: 14,\
    actions: []\
}

function pandamium:startup/flair/load_flair {id: 2, colorable: true, hidden: false, display: {name: "Diamond", value: "💎"}}
function pandamium:startup/flair/load_flair {id: 4, colorable: true, hidden: false, display: {name: "Sparkles", value: "✨"}}
function pandamium:startup/flair/load_flair {id: 5, colorable: true, hidden: false, display: {name: "100!", value: "💯"}}
function pandamium:startup/flair/load_flair {id: 31, colorable: true, hidden: false, display: {name: "Zzz", value: "💤"}}
function pandamium:startup/flair/load_flair {id: 6, colorable: true, hidden: false, display: {name: "Skull", value: "☠"}}
function pandamium:startup/flair/load_flair {id: 8, colorable: true, hidden: false, display: {name: "Dice", value: "🎲"}}
function pandamium:startup/flair/load_flair {id: 9, colorable: true, hidden: false, display: {name: "Fire", value: "🔥"}}
function pandamium:startup/flair/load_flair {id: 15, colorable: true, hidden: false, display: {name: "Galaxy", value: "🌌"}}
function pandamium:startup/flair/load_flair {id: 20, colorable: true, hidden: false, display: {name: "Poop", value: "💩"}}
function pandamium:startup/flair/load_flair {id: 22, colorable: true, hidden: false, display: {name: "Eye", value: "👁"}}
function pandamium:startup/flair/load_flair {id: 198, colorable: true, hidden: false, display: {name: "Eyes", value: "👀"}}
function pandamium:startup/flair/load_flair {id: 129, colorable: true, hidden: false, display: {name: "Trade Mark", value: "™"}}
function pandamium:startup/flair/load_flair {id: 1, colorable: true, hidden: false, display: {name: "Smiley Face", value: "😊"}}
function pandamium:startup/flair/load_flair {id: 3, colorable: true, hidden: false, display: {name: "Sunglasses", value: "😎"}}

function pandamium:startup/flair/load_flair {id: 7, colorable: true, hidden: false, display: {name: "Thumbs Up", value: "👍"}}
function pandamium:startup/flair/load_flair {id: 21, colorable: true, hidden: false, display: {name: "Running", value: "🏃"}}
function pandamium:startup/flair/load_flair {id: 134, colorable: true, hidden: false, display: {name: "Radiation Warning", value: "☢"}}
function pandamium:startup/flair/load_flair {id: 135, colorable: true, hidden: false, display: {name: "Biohazard Warning", value: "☣"}}
function pandamium:startup/flair/load_flair {id: 136, colorable: true, hidden: false, display: {name: "Yin Yang", value: "☯"}}
function pandamium:startup/flair/load_flair {id: 137, colorable: true, hidden: false, display: {name: "Peace", value: "☮"}}
function pandamium:startup/flair/load_flair {id: 24, colorable: true, hidden: false, display: {name: "Sand Timer", value: "⌛"}}
function pandamium:startup/flair/load_flair {id: 23, colorable: true, hidden: false, display: {name: "Ocean Wave", value: "🌊"}}
function pandamium:startup/flair/load_flair {id: 26, colorable: true, hidden: false, display: {name: "Cloud", value: "☁"}}
function pandamium:startup/flair/load_flair {id: 25, colorable: true, hidden: false, display: {name: "Lightning", value: "⚡"}}
function pandamium:startup/flair/load_flair {id: 27, colorable: true, hidden: false, display: {name: "Umbrella", value: "☂"}}
function pandamium:startup/flair/load_flair {id: 28, colorable: true, hidden: false, display: {name: "Snowflake", value: {font:"minecraft:uniform",text:"❄"}}}
function pandamium:startup/flair/load_flair {id: 29, colorable: true, hidden: false, display: {name: "Snowman", value: "☃"}}
function pandamium:startup/flair/load_flair {id: 34, colorable: true, hidden: false, display: {name: "Candy", value: "🍬"}}

function pandamium:startup/flair/load_flair {id: 35, colorable: true, hidden: false, display: {name: "Lollipop", value: "🍭"}}
function pandamium:startup/flair/load_flair {id: 36, colorable: true, hidden: false, display: {name: "Cookie", value: "🍪"}}
function pandamium:startup/flair/load_flair {id: 37, colorable: true, hidden: false, display: {name: "Ice Cream", value: "🍦"}}
function pandamium:startup/flair/load_flair {id: 38, colorable: true, hidden: false, display: {name: "Pizza", value: "🍕"}}
function pandamium:startup/flair/load_flair {id: 39, colorable: true, hidden: false, display: {name: "Meat on a Bone", value: "🍖"}}
function pandamium:startup/flair/load_flair {id: 56, colorable: true, hidden: false, display: {name: "Cake", value: "🎂"}}
function pandamium:startup/flair/load_flair {id: 47, colorable: true, hidden: false, display: {name: "Boba Tea", value: "🧋"}}
function pandamium:startup/flair/load_flair {id: 48, colorable: true, hidden: false, display: {name: "Hot Beverage", value: "☕"}}
function pandamium:startup/flair/load_flair {id: 49, colorable: true, hidden: false, display: {name: "Tea", value: "🍵"}}
function pandamium:startup/flair/load_flair {id: 50, colorable: true, hidden: false, display: {name: "Martini", value: "🍸"}}
function pandamium:startup/flair/load_flair {id: 51, colorable: true, hidden: false, display: {name: "Cocktail", value: "🍹"}}
function pandamium:startup/flair/load_flair {id: 52, colorable: true, hidden: false, display: {name: "Clinking Beer Mugs", value: "🍻"}}
function pandamium:startup/flair/load_flair {id: 53, colorable: true, hidden: false, display: {name: "Clinking Champagne Flutes", value: "🥂"}}
function pandamium:startup/flair/load_flair {id: 54, colorable: true, hidden: false, display: {name: "Takeaway Cup", value: "🥤"}}

function pandamium:startup/flair/load_flair {id: 55, colorable: true, hidden: false, display: {name: "Glass of Milk", value: "🥛"}}
function pandamium:startup/flair/load_flair {id: 42, colorable: true, hidden: false, display: {name: "Sword", value: "🗡"}}
function pandamium:startup/flair/load_flair {id: 106, colorable: true, hidden: false, display: {name: "Bow & Arrow", value: "🏹"}}
function pandamium:startup/flair/load_flair {id: 41, colorable: true, hidden: false, display: {name: "Crossed Blades", value: "⚔"}}
function pandamium:startup/flair/load_flair {id: 78, colorable: true, hidden: false, display: {name: "Hammer & Spanner", value: "🛠"}}
function pandamium:startup/flair/load_flair {id: 43, colorable: true, hidden: false, display: {name: "Pickaxe", value: "⛏"}}
function pandamium:startup/flair/load_flair {id: 44, colorable: true, hidden: false, display: {name: "Axe", value: "🪓"}}
function pandamium:startup/flair/load_flair {id: 40, colorable: true, hidden: false, display: {name: "Shears", value: "✂"}}
function pandamium:startup/flair/load_flair {id: 45, colorable: true, hidden: false, display: {name: "Potion", value: "🧪"}}
function pandamium:startup/flair/load_flair {id: 46, colorable: true, hidden: false, display: {name: "Splash Potion", value: "⚗"}}
function pandamium:startup/flair/load_flair {id: 128, colorable: true, hidden: false, display: {name: "Flying Kite", value: "🪁"}}
function pandamium:startup/flair/load_flair {id: 127, colorable: true, hidden: false, display: {name: "Rugby Ball", value: "🏈"}}
function pandamium:startup/flair/load_flair {id: 121, colorable: true, hidden: false, display: {name: "Magic Wand", value: "🪄"}}
function pandamium:startup/flair/load_flair {id: 122, colorable: true, hidden: false, display: {name: "Bull's-Eye", value: "🎯"}}

function pandamium:startup/flair/load_flair {id: 123, colorable: true, hidden: false, display: {name: "Graduation Cap", value: "🎓"}}
function pandamium:startup/flair/load_flair {id: 124, colorable: true, hidden: false, display: {name: "Decorated Hat", value: "👒"}}
function pandamium:startup/flair/load_flair {id: 125, colorable: true, hidden: false, display: {name: "Glasses", value: "👓"}}
function pandamium:startup/flair/load_flair {id: 126, colorable: true, hidden: false, display: {name: "Wedding Ring", value: "💍"}}
function pandamium:startup/flair/load_flair {id: 18, colorable: true, hidden: false, display: {name: "Music Beam", value: "♬"}}
function pandamium:startup/flair/load_flair {id: 19, colorable: true, hidden: false, display: {name: "Music Note", value: "♪"}}
function pandamium:startup/flair/load_flair {id: 194, colorable: true, hidden: false, display: {name: "Microphone", value: "🎤"}}
function pandamium:startup/flair/load_flair {id: 193, colorable: true, hidden: false, display: {name: "Clapper Board", value: "🎬"}}
function pandamium:startup/flair/load_flair {id: 89, colorable: true, hidden: false, display: {name: "Gaming Controller", value: "🎮"}}
function pandamium:startup/flair/load_flair {id: 90, colorable: true, hidden: false, display: {name: "Headphones", value: "🎧"}}
function pandamium:startup/flair/load_flair {id: 119, colorable: true, hidden: false, display: {name: "Pac-Man", value: "\U0001CC72"}}
function pandamium:startup/flair/load_flair {id: 84, colorable: true, hidden: false, display: {name: "Ghost", value: "👻"}}
function pandamium:startup/flair/load_flair {id: 130, colorable: true, hidden: false, display: {name: "Robot", value: "🤖"}}
function pandamium:startup/flair/load_flair {id: 91, colorable: true, hidden: false, display: {name: "Flying Saucer", value: "🛸"}}

function pandamium:startup/flair/load_flair {id: 10, colorable: true, hidden: false, display: {name: "Rocket Ship", value: "🚀"}}
function pandamium:startup/flair/load_flair {id: 92, colorable: true, hidden: false, display: {name: "Earth", value: "🌏"}}
function pandamium:startup/flair/load_flair {id: 30, colorable: true, hidden: false, display: {name: "Comet", value: "☄"}}
function pandamium:startup/flair/load_flair {id: 107, colorable: true, hidden: false, display: {name: "Anchor", value: "⚓"}}
function pandamium:startup/flair/load_flair {id: 113, colorable: true, hidden: false, display: {name: "Hook", value: "🪝"}}
function pandamium:startup/flair/load_flair {id: 133, colorable: true, hidden: false, display: {name: "Trident", value: "🔱"}}
function pandamium:startup/flair/load_flair {id: 108, colorable: true, hidden: false, display: {name: "Compass", value: "🧭"}}
function pandamium:startup/flair/load_flair {id: 109, colorable: true, hidden: false, display: {name: "DNA", value: "🧬"}}
function pandamium:startup/flair/load_flair {id: 110, colorable: true, hidden: false, display: {name: "Flying Flag", value: "🏴"}}
function pandamium:startup/flair/load_flair {id: 112, colorable: true, hidden: false, display: {name: "Bomb", value: "💣"}}
function pandamium:startup/flair/load_flair {id: 114, colorable: true, hidden: false, display: {name: "X-Ray", value: "🩻"}}
function pandamium:startup/flair/load_flair {id: 115, colorable: true, hidden: false, display: {name: "Key", value: "🔑"}}
function pandamium:startup/flair/load_flair {id: 197, colorable: true, hidden: false, display: {name: "Tree", value: "🌳"}}
function pandamium:startup/flair/load_flair {id: 195, colorable: true, hidden: false, display: {name: "Palm Tree", value: "🏝"}}

function pandamium:startup/flair/load_flair {id: 196, colorable: true, hidden: false, display: {name: "Evergreen Tree", value: "🌲"}}
function pandamium:startup/flair/load_flair {id: 192, colorable: true, hidden: false, display: {name: "Coral", value: "🪸"}}
function pandamium:startup/flair/load_flair {id: 95, colorable: true, hidden: false, display: {name: "Rose", value: "🌹"}}
function pandamium:startup/flair/load_flair {id: 16, colorable: true, hidden: false, display: {name: "Blossom", value: "🌼"}}
function pandamium:startup/flair/load_flair {id: 17, colorable: true, hidden: false, display: {name: "Tulip", value: "🌷"}}
function pandamium:startup/flair/load_flair {id: 111, colorable: true, hidden: false, display: {name: "Hibiscus", value: "🌺"}}
function pandamium:startup/flair/load_flair {id: 58, colorable: true, hidden: false, display: {name: "Bouquet", value: "💐"}}
function pandamium:startup/flair/load_flair {id: 132, colorable: true, hidden: false, display: {name: "Fleur de Lis", value: "⚜"}}
function pandamium:startup/flair/load_flair {id: 131, colorable: true, hidden: false, display: {name: "Clover", value: "☘"}}
function pandamium:startup/flair/load_flair {id: 94, colorable: true, hidden: false, display: {name: "Cactus", value: "🌵"}}
function pandamium:startup/flair/load_flair {id: 116, colorable: true, hidden: false, display: {name: "Apple", value: "🍏"}}
function pandamium:startup/flair/load_flair {id: 139, colorable: true, hidden: false, display: {name: "Blueberries", value: "🫐"}}
function pandamium:startup/flair/load_flair {id: 120, colorable: true, hidden: false, display: {name: "Strawberry", value: "🍓"}}
function pandamium:startup/flair/load_flair {id: 79, colorable: true, hidden: false, display: {name: "Jack o' Lantern", value: "🎃"}}

function pandamium:startup/flair/load_flair {id: 190, colorable: true, hidden: false, display: {name: "Paw Prints", value: "🐾"}}
function pandamium:startup/flair/load_flair {id: 191, colorable: true, hidden: false, display: {name: "Feather", value: "🪶"}}
function pandamium:startup/flair/load_flair {id: 32, colorable: true, hidden: false, display: {name: "Bubbles", value: "🫧"}}
function pandamium:startup/flair/load_flair {id: 138, colorable: true, hidden: false, display: {name: "Monkey", value: "🐵"}}
function pandamium:startup/flair/load_flair {id: 117, colorable: true, hidden: false, display: {name: "Dog", value: "🐶"}}
function pandamium:startup/flair/load_flair {id: 140, colorable: true, hidden: false, display: {name: "Poodle", value: "🐩"}}
function pandamium:startup/flair/load_flair {id: 93, colorable: true, hidden: false, display: {name: "Cat", value: "🐈"}}
function pandamium:startup/flair/load_flair {id: 141, colorable: true, hidden: false, display: {name: "Horse", value: "🐴"}}
function pandamium:startup/flair/load_flair {id: 142, colorable: true, hidden: false, display: {name: "Unicorn", value: "🦄"}}
function pandamium:startup/flair/load_flair {id: 143, colorable: true, hidden: false, display: {name: "Zebra", value: "🦓"}}
function pandamium:startup/flair/load_flair {id: 144, colorable: true, hidden: false, display: {name: "Reindeer", value: "🦌"}}
function pandamium:startup/flair/load_flair {id: 145, colorable: true, hidden: false, display: {name: "Cow", value: "🐮"}}
function pandamium:startup/flair/load_flair {id: 147, colorable: true, hidden: false, display: {name: "Camel", value: "🐫"}}
function pandamium:startup/flair/load_flair {id: 148, colorable: true, hidden: false, display: {name: "Llama", value: "🦙"}}

function pandamium:startup/flair/load_flair {id: 149, colorable: true, hidden: false, display: {name: "Elephant", value: "🐘"}}
function pandamium:startup/flair/load_flair {id: 150, colorable: true, hidden: false, display: {name: "Rhino", value: "🦏"}}
function pandamium:startup/flair/load_flair {id: 151, colorable: true, hidden: false, display: {name: "Mouse", value: "🐁"}}
function pandamium:startup/flair/load_flair {id: 152, colorable: true, hidden: false, display: {name: "Rabbit", value: "🐇"}}
function pandamium:startup/flair/load_flair {id: 153, colorable: true, hidden: false, display: {name: "Squirrel", value: "🐿"}}
function pandamium:startup/flair/load_flair {id: 86, colorable: true, hidden: false, display: {name: "Bat", value: "🦇"}}
function pandamium:startup/flair/load_flair {id: 154, colorable: true, hidden: false, display: {name: "Skunk", value: "🦨"}}
function pandamium:startup/flair/load_flair {id: 155, colorable: true, hidden: false, display: {name: "Sloth", value: "🦥"}}
function pandamium:startup/flair/load_flair {id: 158, colorable: true, hidden: false, display: {name: "Bird", value: "🐦"}}
function pandamium:startup/flair/load_flair {id: 156, colorable: true, hidden: false, display: {name: "Chicken", value: "🐔"}}
function pandamium:startup/flair/load_flair {id: 157, colorable: true, hidden: false, display: {name: "Rooster", value: "🐓"}}
function pandamium:startup/flair/load_flair {id: 159, colorable: true, hidden: false, display: {name: "Penguin", value: "🐧"}}
function pandamium:startup/flair/load_flair {id: 160, colorable: true, hidden: false, display: {name: "Dove", value: "🕊"}}
function pandamium:startup/flair/load_flair {id: 161, colorable: true, hidden: false, display: {name: "Swan", value: "🦢"}}

function pandamium:startup/flair/load_flair {id: 162, colorable: true, hidden: false, display: {name: "Goose", value: "🪿"}}
function pandamium:startup/flair/load_flair {id: 163, colorable: true, hidden: false, display: {name: "Lizard", value: "🦎"}}
function pandamium:startup/flair/load_flair {id: 164, colorable: true, hidden: false, display: {name: "Snake", value: "🐍"}}
function pandamium:startup/flair/load_flair {id: 165, colorable: true, hidden: false, display: {name: "Dragon", value: "🐉"}}
function pandamium:startup/flair/load_flair {id: 166, colorable: true, hidden: false, display: {name: "Sauropod", value: "🦕"}}
function pandamium:startup/flair/load_flair {id: 167, colorable: true, hidden: false, display: {name: "Whale", value: "🐳"}}
function pandamium:startup/flair/load_flair {id: 168, colorable: true, hidden: false, display: {name: "Dolphin", value: "🐬"}}
function pandamium:startup/flair/load_flair {id: 169, colorable: true, hidden: false, display: {name: "Shark", value: "🦈"}}
function pandamium:startup/flair/load_flair {id: 170, colorable: true, hidden: false, display: {name: "Fish", value: "🐟"}}
function pandamium:startup/flair/load_flair {id: 171, colorable: true, hidden: false, display: {name: "Tropical Fish", value: "🐠"}}
function pandamium:startup/flair/load_flair {id: 172, colorable: true, hidden: false, display: {name: "Pufferfish", value: "🐡"}}
function pandamium:startup/flair/load_flair {id: 173, colorable: true, hidden: false, display: {name: "Octopus", value: "🐙"}}
function pandamium:startup/flair/load_flair {id: 177, colorable: true, hidden: false, display: {name: "Squid", value: "🦑"}}
function pandamium:startup/flair/load_flair {id: 174, colorable: true, hidden: false, display: {name: "Jellyfish", value: "🪼"}}

function pandamium:startup/flair/load_flair {id: 175, colorable: true, hidden: false, display: {name: "Crab", value: "🦀"}}
function pandamium:startup/flair/load_flair {id: 176, colorable: true, hidden: false, display: {name: "Lobster", value: "🦞"}}
function pandamium:startup/flair/load_flair {id: 33, colorable: true, hidden: false, display: {name: "Shell", value: "🐚"}}
function pandamium:startup/flair/load_flair {id: 178, colorable: true, hidden: false, display: {name: "Snail", value: "🐌"}}
function pandamium:startup/flair/load_flair {id: 179, colorable: true, hidden: false, display: {name: "Caterpillar", value: "🐛"}}
function pandamium:startup/flair/load_flair {id: 11, colorable: true, hidden: false, display: {name: "Butterfly", value: "🦋"}}
function pandamium:startup/flair/load_flair {id: 180, colorable: true, hidden: false, display: {name: "Ant", value: "🐜"}}
function pandamium:startup/flair/load_flair {id: 181, colorable: true, hidden: false, display: {name: "Bee", value: "🐝"}}
function pandamium:startup/flair/load_flair {id: 182, colorable: true, hidden: false, display: {name: "Beetle", value: "🪲"}}
function pandamium:startup/flair/load_flair {id: 183, colorable: true, hidden: false, display: {name: "Ladybird", value: "🐞"}}
function pandamium:startup/flair/load_flair {id: 184, colorable: true, hidden: false, display: {name: "Cricket", value: "🦗"}}
function pandamium:startup/flair/load_flair {id: 185, colorable: true, hidden: false, display: {name: "Cockroach", value: "🪳"}}
function pandamium:startup/flair/load_flair {id: 81, colorable: true, hidden: false, display: {name: "Spider", value: "🕷"}}
function pandamium:startup/flair/load_flair {id: 80, colorable: true, hidden: false, display: {name: "Cobweb", value: "🕸"}}

function pandamium:startup/flair/load_flair {id: 186, colorable: true, hidden: false, display: {name: "Scorpian", value: "🦂"}}
function pandamium:startup/flair/load_flair {id: 187, colorable: true, hidden: false, display: {name: "Fly", value: "🪰"}}
function pandamium:startup/flair/load_flair {id: 188, colorable: true, hidden: false, display: {name: "Worm", value: "🪱"}}
function pandamium:startup/flair/load_flair {id: 189, colorable: true, hidden: false, display: {name: "Microbe", value: "🦠"}}
function pandamium:startup/flair/load_flair {id: 68, colorable: true, hidden: false, display: {name: "Heart", value: "❤"}}
function pandamium:startup/flair/load_flair {id: 69, colorable: true, hidden: false, display: {name: "Broken Heart", value: "💔"}}
function pandamium:startup/flair/load_flair {id: 70, colorable: true, hidden: false, display: {name: "Two Hearts", value: "💕"}}
function pandamium:startup/flair/load_flair {id: 71, colorable: true, hidden: false, display: {name: "Heart with Horizontal Stripes", value: "💙"}}
function pandamium:startup/flair/load_flair {id: 72, colorable: true, hidden: false, display: {name: "Heart with Diagonal Stripes", value: "💚"}}
function pandamium:startup/flair/load_flair {id: 73, colorable: true, hidden: false, display: {name: "Heart with a Bow", value: "💝"}}
function pandamium:startup/flair/load_flair {id: 74, colorable: true, hidden: false, display: {name: "Beating Heart", value: "💓"}}
function pandamium:startup/flair/load_flair {id: 77, colorable: true, hidden: false, display: {name: "Arrow-Pierced Heart", value: "💘"}}
function pandamium:startup/flair/load_flair {id: 75, colorable: true, hidden: false, display: {name: "Sideways Heart", value: "❥"}}
function pandamium:startup/flair/load_flair {id: 76, colorable: true, hidden: false, display: {name: "Hand Heart", value: "🫶"}}

function pandamium:startup/flair/load_flair {id: 61, colorable: true, hidden: false, display: {name: "Rainbow", value: "🌈"}}
function pandamium:startup/flair/load_flair {id: 57, colorable: true, hidden: false, display: {name: "Balloon", value: "🎈"}}
function pandamium:startup/flair/load_flair {id: 59, colorable: true, hidden: false, display: {name: "Present", value: "🎁"}}
function pandamium:startup/flair/load_flair {id: 60, colorable: true, hidden: false, display: {name: "Candle", value: "🕯"}}
function pandamium:startup/flair/load_flair {id: 62, colorable: true, hidden: false, display: {name: "Party Popper", value: "🎉"}}
function pandamium:startup/flair/load_flair {id: 63, colorable: true, hidden: false, display: {name: "Fireworks", value: "🎆"}}
function pandamium:startup/flair/load_flair {id: 64, colorable: true, hidden: false, display: {name: "Star", value: "⭐"}}
function pandamium:startup/flair/load_flair {id: 65, colorable: true, hidden: false, display: {name: "Hollow Star", value: "✰"}}
function pandamium:startup/flair/load_flair {id: 66, colorable: true, hidden: false, display: {name: "Shining Star", value: "🌟"}}
function pandamium:startup/flair/load_flair {id: 67, colorable: true, hidden: false, display: {name: "Shooting Star", value: "🌠"}}
function pandamium:startup/flair/load_flair {id: 12, colorable: true, hidden: false, display: {name: "Sun", value: "☀"}}
function pandamium:startup/flair/load_flair {id: 13, colorable: true, hidden: false, display: {name: "Moon", value: "☽"}}
function pandamium:startup/flair/load_flair {id: 14, colorable: true, hidden: false, display: {name: "Explosion", value: "💥"}}
function pandamium:startup/flair/load_flair {id: 118, colorable: true, hidden: false, display: {name: "Sparkle", value: "❇"}}

function pandamium:startup/flair/load_flair {id: 97, colorable: false, hidden: false, display: {name: "LGBTQ+ Pride Flag", value: {color: "#E40303", text: "§!▍", extra:[{color: "#FF8C00", text: "▍"}, {color: "#FFED00", text: "▍"}, {color: "#008026", text: "▍"}, {color: "#24408E", text: "▍"}, {color: "#732982", text: "▍"}]}}}
function pandamium:startup/flair/load_flair {id: 98, colorable: false, hidden: false, display: {name: "Transgender Pride Flag", value: {color: "#5BCEFA", text: "§+▍", extra:[{color: "#F5A9B8", text: "▍"}, {color: "#FFFFFF", text: "▍"}, {color: "#F5A9B8", text: "▍"}, {color: "#5BCEFA", text: "▍"}]}}}
function pandamium:startup/flair/load_flair {id: 99, colorable: false, hidden: false, display: {name: "Non-Binary Pride Flag", value: {color: "#FCF434", text: "§#▋", extra:[{color: "#FFFFFF", text: "▋"}, {color: "#9C59D1", text: "▋"}, {color: "#2C2C2C", text: "▋"}]}}}
function pandamium:startup/flair/load_flair {id: 100, colorable: false, hidden: false, display: {name: "Bisexual Pride Flag", value: {color: "#D60270", text: "§$▉", extra:[{color: "#9B4F96", text: "▋"}, {color: "#0038A8", text: "▉"}]}}}
function pandamium:startup/flair/load_flair {id: 101, colorable: false, hidden: false, display: {name: "Pansexual Pride Flag", value: {color: "#D60270", text: "§%▉", extra:[{color: "#FFD800", text: "▉"}, {color: "#21B1FF", text: "▉"}]}}}
function pandamium:startup/flair/load_flair {id: 102, colorable: false, hidden: false, display: {name: "Lesbians Pride Flag", value: {color: "#D42C00", text: "§&▍", extra:[{color: "#FD9855", text: "▍"}, {color: "#FFFFFF", text: "▍"}, {color: "#D161A2", text: "▍"}, {color: "#A20161", text: "▍"}]}}}
function pandamium:startup/flair/load_flair {id: 103, colorable: false, hidden: false, display: {name: "Gay Men Pride Flag", value: {color: "#078D70", text: "§'▍", extra:[{color: "#98E8C1", text: "▍"}, {color: "#FFFFFF", text: "▍"}, {color: "#7BADE2", text: "▍"}, {color: "#3D1A78", text: "▍"}]}}}
function pandamium:startup/flair/load_flair {id: 104, colorable: false, hidden: false, display: {name: "Asexual Pride Flag", value: {color: "#000000", text: "§(▋", extra:[{color: "#A3A3A3", text: "▋"}, {color: "#FFFFFF", text: "▋"}, {color: "#800080", text: "▋"}]}}}
function pandamium:startup/flair/load_flair {id: 105, colorable: false, hidden: false, display: {name: "Aromantic Pride Flag", value: {color: "#3DA542", text: "§)▍", extra:[{color: "#A7D379", text: "▍"}, {color: "#FFFFFF", text: "▍"}, {color: "#A9A9A9", text: "▍"}, {color: "#000000", text: "▍"}]}}}

function pandamium:startup/flair/load_flair {id: 146, colorable: true, hidden: true, display: {name: "Pig", value: "🐷"}}
function pandamium:startup/flair/load_flair {id: 82, colorable: true, hidden: true, display: {name: "Gravestone", value: "🪦"}}
function pandamium:startup/flair/load_flair {id: 83, colorable: true, hidden: true, display: {name: "Coffin", value: "⚰"}}
function pandamium:startup/flair/load_flair {id: 85, colorable: true, hidden: true, display: {name: "Clown", value: "🤡"}}
function pandamium:startup/flair/load_flair {id: 87, colorable: true, hidden: true, display: {name: "Knife", value: "🔪"}}
function pandamium:startup/flair/load_flair {id: 88, colorable: true, hidden: true, display: {name: "Screaming Face", value: "😱"}}
function pandamium:startup/flair/load_flair {id: 96, colorable: true, hidden: true, display: {name: "sus...", value: "ඞ"}}
