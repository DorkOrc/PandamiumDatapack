data modify storage pandamium:local functions."pandamium:triggers/flair/*".dialog set value {\
    type: "minecraft:multi_action",\
    title: "",\
    body: [\
        {type: "minecraft:plain_message",contents: ["",{color:"gray",italic:true,text:"Preview: "},[""," ",""]]},\
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
        {type: "minecraft:plain_message",contents: [{text:"[Reset Colour]",hover_event:{action:"show_text",value:[{text:"Click to pick flair colour "},{bold:true,text:"Null"}]},click_event:{action:"run_command",command:"trigger flair set -2"}},"   ",{text:"[Remove Flair]",hover_event:{action:"show_text",value:[{text:"Click to remove your flair"}]},click_event:{action:"run_command",command:"trigger flair set -1"}}]}\
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
    columns: 13,\
    actions: [\
        {label:{shadow_color:[0,0,0,0],text:"😊"},width:20,tooltip:["Smiley Face",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"😊"}],action:{type:"run_command",command:"/trigger flair set -1001"}},\
        {label:{shadow_color:[0,0,0,0],text:"💎"},width:20,tooltip:["Diamond",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"💎"}],action:{type:"run_command",command:"/trigger flair set -1002"}},\
        {label:{shadow_color:[0,0,0,0],text:"😎"},width:20,tooltip:["Sunglasses",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"😎"}],action:{type:"run_command",command:"/trigger flair set -1003"}},\
        {label:{shadow_color:[0,0,0,0],text:"✨"},width:20,tooltip:["Sparkles",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"✨"}],action:{type:"run_command",command:"/trigger flair set -1004"}},\
        {label:{shadow_color:[0,0,0,0],text:"💯"},width:20,tooltip:["100!",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"💯"}],action:{type:"run_command",command:"/trigger flair set -1005"}},\
        {label:{shadow_color:[0,0,0,0],text:"☠"},width:20,tooltip:["Skull",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"☠"}],action:{type:"run_command",command:"/trigger flair set -1006"}},\
        {label:{shadow_color:[0,0,0,0],text:"👍"},width:20,tooltip:["Thumbs Up",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"👍"}],action:{type:"run_command",command:"/trigger flair set -1007"}},\
        {label:{shadow_color:[0,0,0,0],text:"🎲"},width:20,tooltip:["Dice",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🎲"}],action:{type:"run_command",command:"/trigger flair set -1008"}},\
        {label:{shadow_color:[0,0,0,0],text:"🔥"},width:20,tooltip:["Fire",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🔥"}],action:{type:"run_command",command:"/trigger flair set -1009"}},\
        {label:{shadow_color:[0,0,0,0],text:"🚀"},width:20,tooltip:["Rocket Ship",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🚀"}],action:{type:"run_command",command:"/trigger flair set -1010"}},\
        {label:{shadow_color:[0,0,0,0],text:"🦋"},width:20,tooltip:["Butterfly",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🦋"}],action:{type:"run_command",command:"/trigger flair set -1011"}},\
        {label:{shadow_color:[0,0,0,0],text:"☀"},width:20,tooltip:["Sun",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"☀"}],action:{type:"run_command",command:"/trigger flair set -1012"}},\
        {label:{shadow_color:[0,0,0,0],text:"☽"},width:20,tooltip:["Moon",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"☽"}],action:{type:"run_command",command:"/trigger flair set -1013"}},\
        {label:{shadow_color:[0,0,0,0],text:"💥"},width:20,tooltip:["Explosion",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"💥"}],action:{type:"run_command",command:"/trigger flair set -1014"}},\
        {label:{shadow_color:[0,0,0,0],text:"🌌"},width:20,tooltip:["Galaxy",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🌌"}],action:{type:"run_command",command:"/trigger flair set -1015"}},\
        {label:{shadow_color:[0,0,0,0],text:"🌼"},width:20,tooltip:["Blossom",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🌼"}],action:{type:"run_command",command:"/trigger flair set -1016"}},\
        {label:{shadow_color:[0,0,0,0],text:"🌷"},width:20,tooltip:["Tulip",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🌷"}],action:{type:"run_command",command:"/trigger flair set -1017"}},\
        {label:{shadow_color:[0,0,0,0],text:"♬"},width:20,tooltip:["Music Beam",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"♬"}],action:{type:"run_command",command:"/trigger flair set -1018"}},\
        {label:{shadow_color:[0,0,0,0],text:"♪"},width:20,tooltip:["Music Note",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"♪"}],action:{type:"run_command",command:"/trigger flair set -1019"}},\
        {label:{shadow_color:[0,0,0,0],text:"💩"},width:20,tooltip:["Poop",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"💩"}],action:{type:"run_command",command:"/trigger flair set -1020"}},\
        {label:{shadow_color:[0,0,0,0],text:"🏃"},width:20,tooltip:["Running",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🏃"}],action:{type:"run_command",command:"/trigger flair set -1021"}},\
        {label:{shadow_color:[0,0,0,0],text:"👁"},width:20,tooltip:["Eye",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"👁"}],action:{type:"run_command",command:"/trigger flair set -1022"}},\
        {label:{shadow_color:[0,0,0,0],text:"🌊"},width:20,tooltip:["Ocean Wave",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🌊"}],action:{type:"run_command",command:"/trigger flair set -1023"}},\
        {label:{shadow_color:[0,0,0,0],text:"⌛"},width:20,tooltip:["Sand Timer",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"⌛"}],action:{type:"run_command",command:"/trigger flair set -1024"}},\
        {label:{shadow_color:[0,0,0,0],text:"⚡"},width:20,tooltip:["Lightning",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"⚡"}],action:{type:"run_command",command:"/trigger flair set -1025"}},\
        {label:{shadow_color:[0,0,0,0],text:"☁"},width:20,tooltip:["Cloud",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"☁"}],action:{type:"run_command",command:"/trigger flair set -1026"}},\
        {label:{shadow_color:[0,0,0,0],text:"☂"},width:20,tooltip:["Umbrella",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"☂"}],action:{type:"run_command",command:"/trigger flair set -1027"}},\
        {label:{shadow_color:[0,0,0,0],text:"❄",font:"minecraft:uniform"},width:20,tooltip:["Snowflake",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"❄",font:"minecraft:uniform"}],action:{type:"run_command",command:"/trigger flair set -1028"}},\
        {label:{shadow_color:[0,0,0,0],text:"☃"},width:20,tooltip:["Snowman",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"☃"}],action:{type:"run_command",command:"/trigger flair set -1029"}},\
        {label:{shadow_color:[0,0,0,0],text:"☄"},width:20,tooltip:["Comet",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"☄"}],action:{type:"run_command",command:"/trigger flair set -1030"}},\
        {label:{shadow_color:[0,0,0,0],text:"💤"},width:20,tooltip:["Zzz",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"💤"}],action:{type:"run_command",command:"/trigger flair set -1031"}},\
        {label:{shadow_color:[0,0,0,0],text:"🫧"},width:20,tooltip:["Bubbles",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🫧"}],action:{type:"run_command",command:"/trigger flair set -1032"}},\
        {label:{shadow_color:[0,0,0,0],text:"🐚"},width:20,tooltip:["Shell",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🐚"}],action:{type:"run_command",command:"/trigger flair set -1033"}},\
        {label:{shadow_color:[0,0,0,0],text:"🍬"},width:20,tooltip:["Candy",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🍬"}],action:{type:"run_command",command:"/trigger flair set -1034"}},\
        {label:{shadow_color:[0,0,0,0],text:"🍭"},width:20,tooltip:["Lollipop",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🍭"}],action:{type:"run_command",command:"/trigger flair set -1035"}},\
        {label:{shadow_color:[0,0,0,0],text:"🍪"},width:20,tooltip:["Cookie",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🍪"}],action:{type:"run_command",command:"/trigger flair set -1036"}},\
        {label:{shadow_color:[0,0,0,0],text:"🍦"},width:20,tooltip:["Ice Cream",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🍦"}],action:{type:"run_command",command:"/trigger flair set -1037"}},\
        {label:{shadow_color:[0,0,0,0],text:"🍕"},width:20,tooltip:["Pizza",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🍕"}],action:{type:"run_command",command:"/trigger flair set -1038"}},\
        {label:{shadow_color:[0,0,0,0],text:"🍖"},width:20,tooltip:["Meat on a Bone",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🍖"}],action:{type:"run_command",command:"/trigger flair set -1039"}},\
        {label:{shadow_color:[0,0,0,0],text:"✂"},width:20,tooltip:["Shears",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"✂"}],action:{type:"run_command",command:"/trigger flair set -1040"}},\
        {label:{shadow_color:[0,0,0,0],text:"⚔"},width:20,tooltip:["Crossed Blades",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"⚔"}],action:{type:"run_command",command:"/trigger flair set -1041"}},\
        {label:{shadow_color:[0,0,0,0],text:"🗡"},width:20,tooltip:["Sword",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🗡"}],action:{type:"run_command",command:"/trigger flair set -1042"}},\
        {label:{shadow_color:[0,0,0,0],text:"⛏"},width:20,tooltip:["Pickaxe",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"⛏"}],action:{type:"run_command",command:"/trigger flair set -1043"}},\
        {label:{shadow_color:[0,0,0,0],text:"🪓"},width:20,tooltip:["Axe",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🪓"}],action:{type:"run_command",command:"/trigger flair set -1044"}},\
        {label:{shadow_color:[0,0,0,0],text:"🧪"},width:20,tooltip:["Potion",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🧪"}],action:{type:"run_command",command:"/trigger flair set -1045"}},\
        {label:{shadow_color:[0,0,0,0],text:"⚗"},width:20,tooltip:["Splash Potion",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"⚗"}],action:{type:"run_command",command:"/trigger flair set -1046"}},\
        {label:{shadow_color:[0,0,0,0],text:"🧋"},width:20,tooltip:["Boba Tea",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🧋"}],action:{type:"run_command",command:"/trigger flair set -1047"}},\
        {label:{shadow_color:[0,0,0,0],text:"☕"},width:20,tooltip:["Hot Beverage",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"☕"}],action:{type:"run_command",command:"/trigger flair set -1048"}},\
        {label:{shadow_color:[0,0,0,0],text:"🍵"},width:20,tooltip:["Tea",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🍵"}],action:{type:"run_command",command:"/trigger flair set -1049"}},\
        {label:{shadow_color:[0,0,0,0],text:"🍸"},width:20,tooltip:["Martini",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🍸"}],action:{type:"run_command",command:"/trigger flair set -1050"}},\
        {label:{shadow_color:[0,0,0,0],text:"🍹"},width:20,tooltip:["Cocktail",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🍹"}],action:{type:"run_command",command:"/trigger flair set -1051"}},\
        {label:{shadow_color:[0,0,0,0],text:"🍻"},width:20,tooltip:["Clinking Beer Mugs",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🍻"}],action:{type:"run_command",command:"/trigger flair set -1052"}},\
        {label:{shadow_color:[0,0,0,0],text:"🥂"},width:20,tooltip:["Clinking Champagne Flutes",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🥂"}],action:{type:"run_command",command:"/trigger flair set -1053"}},\
        {label:{shadow_color:[0,0,0,0],text:"🥤"},width:20,tooltip:["Takeaway Cup",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🥤"}],action:{type:"run_command",command:"/trigger flair set -1054"}},\
        {label:{shadow_color:[0,0,0,0],text:"🥛"},width:20,tooltip:["Glass of Milk",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🥛"}],action:{type:"run_command",command:"/trigger flair set -1055"}},\
        {label:{shadow_color:[0,0,0,0],text:"🎂"},width:20,tooltip:["Cake",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🎂"}],action:{type:"run_command",command:"/trigger flair set -1056"}},\
        {label:{shadow_color:[0,0,0,0],text:"🎈"},width:20,tooltip:["Balloon",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🎈"}],action:{type:"run_command",command:"/trigger flair set -1057"}},\
        {label:{shadow_color:[0,0,0,0],text:"💐"},width:20,tooltip:["Bouquet",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"💐"}],action:{type:"run_command",command:"/trigger flair set -1058"}},\
        {label:{shadow_color:[0,0,0,0],text:"🎁"},width:20,tooltip:["Present",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🎁"}],action:{type:"run_command",command:"/trigger flair set -1059"}},\
        {label:{shadow_color:[0,0,0,0],text:"🕯"},width:20,tooltip:["Candle",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🕯"}],action:{type:"run_command",command:"/trigger flair set -1060"}},\
        {label:{shadow_color:[0,0,0,0],text:"🌈"},width:20,tooltip:["Rainbow",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🌈"}],action:{type:"run_command",command:"/trigger flair set -1061"}},\
        {label:{shadow_color:[0,0,0,0],text:"🎉"},width:20,tooltip:["Party Popper",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🎉"}],action:{type:"run_command",command:"/trigger flair set -1062"}},\
        {label:{shadow_color:[0,0,0,0],text:"🎆"},width:20,tooltip:["Fireworks",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🎆"}],action:{type:"run_command",command:"/trigger flair set -1063"}},\
        {label:{shadow_color:[0,0,0,0],text:"⭐"},width:20,tooltip:["Star",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"⭐"}],action:{type:"run_command",command:"/trigger flair set -1064"}},\
        {label:{shadow_color:[0,0,0,0],text:"✰"},width:20,tooltip:["Hollow Star",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"✰"}],action:{type:"run_command",command:"/trigger flair set -1065"}},\
        {label:{shadow_color:[0,0,0,0],text:"🌟"},width:20,tooltip:["Shining Star",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🌟"}],action:{type:"run_command",command:"/trigger flair set -1066"}},\
        {label:{shadow_color:[0,0,0,0],text:"🌠"},width:20,tooltip:["Shooting Star",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🌠"}],action:{type:"run_command",command:"/trigger flair set -1067"}},\
        {label:{shadow_color:[0,0,0,0],text:"❤"},width:20,tooltip:["Heart",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"❤"}],action:{type:"run_command",command:"/trigger flair set -1068"}},\
        {label:{shadow_color:[0,0,0,0],text:"💔"},width:20,tooltip:["Broken Heart",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"💔"}],action:{type:"run_command",command:"/trigger flair set -1069"}},\
        {label:{shadow_color:[0,0,0,0],text:"💕"},width:20,tooltip:["Two Hearts",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"💕"}],action:{type:"run_command",command:"/trigger flair set -1070"}},\
        {label:{shadow_color:[0,0,0,0],text:"💙"},width:20,tooltip:["Heart with Horizontal Stripes",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"💙"}],action:{type:"run_command",command:"/trigger flair set -1071"}},\
        {label:{shadow_color:[0,0,0,0],text:"💚"},width:20,tooltip:["Heart with Diagonal Stripes",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"💚"}],action:{type:"run_command",command:"/trigger flair set -1072"}},\
        {label:{shadow_color:[0,0,0,0],text:"💝"},width:20,tooltip:["Heart with a Bow",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"💝"}],action:{type:"run_command",command:"/trigger flair set -1073"}},\
        {label:{shadow_color:[0,0,0,0],text:"💓"},width:20,tooltip:["Beating Heart",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"💓"}],action:{type:"run_command",command:"/trigger flair set -1074"}},\
        {label:{shadow_color:[0,0,0,0],text:"❥"},width:20,tooltip:["Sideways Heart",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"❥"}],action:{type:"run_command",command:"/trigger flair set -1075"}},\
        {label:{shadow_color:[0,0,0,0],text:"🫶"},width:20,tooltip:["Hand Heart",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🫶"}],action:{type:"run_command",command:"/trigger flair set -1076"}},\
        {label:{shadow_color:[0,0,0,0],text:"💘"},width:20,tooltip:["Arrow-Pierced Heart",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"💘"}],action:{type:"run_command",command:"/trigger flair set -1077"}},\
        {label:{shadow_color:[0,0,0,0],text:"🛠"},width:20,tooltip:["Hammer & Spanner",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🛠"}],action:{type:"run_command",command:"/trigger flair set -1078"}},\
        {label:{shadow_color:[0,0,0,0],text:"🎮"},width:20,tooltip:["Gaming Controller",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🎮"}],action:{type:"run_command",command:"/trigger flair set -1089"}},\
        {label:{shadow_color:[0,0,0,0],text:"🎧"},width:20,tooltip:["Headphones",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🎧"}],action:{type:"run_command",command:"/trigger flair set -1090"}},\
        {label:{shadow_color:[0,0,0,0],text:"🛸"},width:20,tooltip:["Flying Saucer",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🛸"}],action:{type:"run_command",command:"/trigger flair set -1091"}},\
        {label:{shadow_color:[0,0,0,0],text:"🌏"},width:20,tooltip:["Earth",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🌏"}],action:{type:"run_command",command:"/trigger flair set -1092"}},\
        {label:{shadow_color:[0,0,0,0],text:"🐈"},width:20,tooltip:["Cat",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🐈"}],action:{type:"run_command",command:"/trigger flair set -1093"}},\
        {label:{shadow_color:[0,0,0,0],text:"🌵"},width:20,tooltip:["Cactus",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🌵"}],action:{type:"run_command",command:"/trigger flair set -1094"}},\
        {label:{shadow_color:[0,0,0,0],text:"🌹"},width:20,tooltip:["Rose",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🌹"}],action:{type:"run_command",command:"/trigger flair set -1095"}},\
        {label:{shadow_color:[0,0,0,0],text:"🏹"},width:20,tooltip:["Bow & Arrow",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🏹"}],action:{type:"run_command",command:"/trigger flair set -1106"}},\
        {label:{shadow_color:[0,0,0,0],text:"⚓"},width:20,tooltip:["Anchor",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"⚓"}],action:{type:"run_command",command:"/trigger flair set -1107"}},\
        {label:{shadow_color:[0,0,0,0],text:"🧭"},width:20,tooltip:["Compass",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🧭"}],action:{type:"run_command",command:"/trigger flair set -1108"}},\
        {label:{shadow_color:[0,0,0,0],text:"🧬"},width:20,tooltip:["DNA",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🧬"}],action:{type:"run_command",command:"/trigger flair set -1109"}},\
        {label:{shadow_color:[0,0,0,0],text:"🏴"},width:20,tooltip:["Flying Flag",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🏴"}],action:{type:"run_command",command:"/trigger flair set -1110"}},\
        {label:{shadow_color:[0,0,0,0],text:"🌺"},width:20,tooltip:["Hibiscus",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🌺"}],action:{type:"run_command",command:"/trigger flair set -1111"}},\
        {label:{shadow_color:[0,0,0,0],text:"💣"},width:20,tooltip:["Bomb",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"💣"}],action:{type:"run_command",command:"/trigger flair set -1112"}},\
        {label:{shadow_color:[0,0,0,0],text:"🪝"},width:20,tooltip:["Hook",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🪝"}],action:{type:"run_command",command:"/trigger flair set -1113"}},\
        {label:{shadow_color:[0,0,0,0],text:"🩻"},width:20,tooltip:["X-Ray",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🩻"}],action:{type:"run_command",command:"/trigger flair set -1114"}},\
        {label:{shadow_color:[0,0,0,0],text:"🔑"},width:20,tooltip:["Key",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🔑"}],action:{type:"run_command",command:"/trigger flair set -1115"}},\
        {label:{shadow_color:[0,0,0,0],text:"🍏"},width:20,tooltip:["Apple",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🍏"}],action:{type:"run_command",command:"/trigger flair set -1116"}},\
        {label:{shadow_color:[0,0,0,0],text:"🐶"},width:20,tooltip:["Dog",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🐶"}],action:{type:"run_command",command:"/trigger flair set -1117"}},\
        {label:{shadow_color:[0,0,0,0],text:"❇"},width:20,tooltip:["Sparkle",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"❇"}],action:{type:"run_command",command:"/trigger flair set -1118"}},\
        {label:{shadow_color:[0,0,0,0],text:"\U0001CC72"},width:20,tooltip:["Pac-Man",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"\U0001CC72"}],action:{type:"run_command",command:"/trigger flair set -1119"}},\
        {label:{shadow_color:[0,0,0,0],text:"🍓"},width:20,tooltip:["Strawberry",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🍓"}],action:{type:"run_command",command:"/trigger flair set -1120"}},\
        {label:{shadow_color:[0,0,0,0],text:"🪄"},width:20,tooltip:["Magic Wand",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🪄"}],action:{type:"run_command",command:"/trigger flair set -1121"}},\
        {label:{shadow_color:[0,0,0,0],text:"🎯"},width:20,tooltip:["Bull's-Eye",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🎯"}],action:{type:"run_command",command:"/trigger flair set -1122"}},\
        {label:{shadow_color:[0,0,0,0],text:"🎓"},width:20,tooltip:["Graduation Cap",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🎓"}],action:{type:"run_command",command:"/trigger flair set -1123"}},\
        {label:{shadow_color:[0,0,0,0],text:"👒"},width:20,tooltip:["Feathered Hat",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"👒"}],action:{type:"run_command",command:"/trigger flair set -1124"}},\
        {label:{shadow_color:[0,0,0,0],text:"👓"},width:20,tooltip:["Glasses",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"👓"}],action:{type:"run_command",command:"/trigger flair set -1125"}},\
        {label:{shadow_color:[0,0,0,0],text:"💍"},width:20,tooltip:["Wedding Ring",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"💍"}],action:{type:"run_command",command:"/trigger flair set -1126"}},\
        {label:{shadow_color:[0,0,0,0],text:"🏈"},width:20,tooltip:["Rugby Ball",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🏈"}],action:{type:"run_command",command:"/trigger flair set -1127"}},\
        {label:{shadow_color:[0,0,0,0],text:"🪁"},width:20,tooltip:["Flying Kite",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🪁"}],action:{type:"run_command",command:"/trigger flair set -1128"}},\
        {label:{shadow_color:[0,0,0,0],text:"™"},width:20,tooltip:["Trade-Mark",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"™"}],action:{type:"run_command",command:"/trigger flair set -1129"}},\
        {label:{shadow_color:[0,0,0,0],text:"🤖"},width:20,tooltip:["Robot",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🤖"}],action:{type:"run_command",command:"/trigger flair set -1130"}},\
        {label:{shadow_color:[0,0,0,0],text:"☘"},width:20,tooltip:["Clover",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"☘"}],action:{type:"run_command",command:"/trigger flair set -1131"}},\
        {label:{shadow_color:[0,0,0,0],text:"⚜"},width:20,tooltip:["Fleur De Lis",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"⚜"}],action:{type:"run_command",command:"/trigger flair set -1132"}},\
        {label:{shadow_color:[0,0,0,0],text:"🔱"},width:20,tooltip:["Trident",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"🔱"}],action:{type:"run_command",command:"/trigger flair set -1133"}},\
        {label:{shadow_color:[0,0,0,0],text:"☢"},width:20,tooltip:["Radiation Warning",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"☢"}],action:{type:"run_command",command:"/trigger flair set -1134"}},\
        {label:{shadow_color:[0,0,0,0],text:"☣"},width:20,tooltip:["Biohazard Warning",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"☣"}],action:{type:"run_command",command:"/trigger flair set -1135"}},\
        {label:{shadow_color:[0,0,0,0],text:"☯"},width:20,tooltip:["Yin Yang",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"☯"}],action:{type:"run_command",command:"/trigger flair set -1136"}},\
        {label:{shadow_color:[0,0,0,0],text:"☮"},width:20,tooltip:["Peace",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{text:"☮"}],action:{type:"run_command",command:"/trigger flair set -1137"}},\
        {__colorable__:false,label:{color:"#E40303",text:"§!▍",extra:[{color:"#FF8C00",text:"▍"},{color:"#FFED00",text:"▍"},{color:"#008026",text:"▍"},{color:"#24408E",text:"▍"},{color:"#732982",text:"▍"}]},width:20,tooltip:["LGBTQ+ Pride Flag",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{color:"#E40303",text:"§!▍",extra:[{color:"#FF8C00",text:"▍"},{color:"#FFED00",text:"▍"},{color:"#008026",text:"▍"},{color:"#24408E",text:"▍"},{color:"#732982",text:"▍"}]}],action:{type:"run_command",command:"/trigger flair set -1097"}},\
        {__colorable__:false,label:{color:"#5BCEFA",text:"§+▍",extra:[{color:"#F5A9B8",text:"▍"},{color:"#FFFFFF",text:"▍"},{color:"#F5A9B8",text:"▍"},{color:"#5BCEFA",text:"▍"}]},width:20,tooltip:["Transgender Pride Flag",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{color:"#5BCEFA",text:"§+▍",extra:[{color:"#F5A9B8",text:"▍"},{color:"#FFFFFF",text:"▍"},{color:"#F5A9B8",text:"▍"},{color:"#5BCEFA",text:"▍"}]}],action:{type:"run_command",command:"/trigger flair set -1098"}},\
        {__colorable__:false,label:{color:"#FCF434",text:"§#▋",extra:[{color:"#FFFFFF",text:"▋"},{color:"#9C59D1",text:"▋"},{color:"#2C2C2C",text:"▋"}]},width:20,tooltip:["Non-Binary Pride Flag",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{color:"#FCF434",text:"§#▋",extra:[{color:"#FFFFFF",text:"▋"},{color:"#9C59D1",text:"▋"},{color:"#2C2C2C",text:"▋"}]}],action:{type:"run_command",command:"/trigger flair set -1099"}},\
        {__colorable__:false,label:{color:"#D60270",text:"§$▉",extra:[{color:"#9B4F96",text:"▋"},{color:"#0038A8",text:"▉"}]},width:20,tooltip:["Bisexual Pride Flag",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{color:"#D60270",text:"§$▉",extra:[{color:"#9B4F96",text:"▋"},{color:"#0038A8",text:"▉"}]}],action:{type:"run_command",command:"/trigger flair set -1100"}},\
        {__colorable__:false,label:{color:"#D60270",text:"§%▉",extra:[{color:"#FFD800",text:"▉"},{color:"#21B1FF",text:"▉"}]},width:20,tooltip:["Pansexual Pride Flag",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{color:"#D60270",text:"§%▉",extra:[{color:"#FFD800",text:"▉"},{color:"#21B1FF",text:"▉"}]}],action:{type:"run_command",command:"/trigger flair set -1101"}},\
        {__colorable__:false,label:{color:"#D42C00",text:"§&▍",extra:[{color:"#FD9855",text:"▍"},{color:"#FFFFFF",text:"▍"},{color:"#D161A2",text:"▍"},{color:"#A20161",text:"▍"}]},width:20,tooltip:["Lesbians Pride Flag",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{color:"#D42C00",text:"§&▍",extra:[{color:"#FD9855",text:"▍"},{color:"#FFFFFF",text:"▍"},{color:"#D161A2",text:"▍"},{color:"#A20161",text:"▍"}]}],action:{type:"run_command",command:"/trigger flair set -1102"}},\
        {__colorable__:false,label:{color:"#078D70",text:"§'▍",extra:[{color:"#98E8C1",text:"▍"},{color:"#FFFFFF",text:"▍"},{color:"#7BADE2",text:"▍"},{color:"#3D1A78",text:"▍"}]},width:20,tooltip:["Gay Men Pride Flag",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{color:"#078D70",text:"§'▍",extra:[{color:"#98E8C1",text:"▍"},{color:"#FFFFFF",text:"▍"},{color:"#7BADE2",text:"▍"},{color:"#3D1A78",text:"▍"}]}],action:{type:"run_command",command:"/trigger flair set -1103"}},\
        {__colorable__:false,label:{color:"#000000",text:"§(▋",extra:[{color:"#A3A3A3",text:"▋"},{color:"#FFFFFF",text:"▋"},{color:"#800080",text:"▋"}]},width:20,tooltip:["Asexual Pride Flag",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{color:"#000000",text:"§(▋",extra:[{color:"#A3A3A3",text:"▋"},{color:"#FFFFFF",text:"▋"},{color:"#800080",text:"▋"}]}],action:{type:"run_command",command:"/trigger flair set -1104"}},\
        {__colorable__:false,label:{color:"#3DA542",text:"§)▍",extra:[{color:"#A7D379",text:"▍"},{color:"#FFFFFF",text:"▍"},{color:"#A9A9A9",text:"▍"},{color:"#000000",text:"▍"}]},width:20,tooltip:["Aromantic Pride Flag",{color:"gray",italic:true,text:"\nPreview: "},"NAME"," ",{color:"#3DA542",text:"§)▍",extra:[{color:"#A7D379",text:"▍"},{color:"#FFFFFF",text:"▍"},{color:"#A9A9A9",text:"▍"},{color:"#000000",text:"▍"}]}],action:{type:"run_command",command:"/trigger flair set -1105"}},\
    ]\
}

function pandamium:utils/database/players/load/self
data remove storage pandamium:local functions."pandamium:triggers/flair/*".current_type
data remove storage pandamium:local functions."pandamium:triggers/flair/*".current_value
function pandamium:triggers/flair/get_current_flair with storage pandamium.db.players:io selected.entry.data.flair

function pandamium:utils/triggers/disable_player_suffixes

data modify storage pandamium:text input set value [{selector:"@s"}," ",{storage:"pandamium:local",nbt:'functions."pandamium:triggers/flair/*".current_value',interpret:true}]
function pandamium:utils/text/input/resolve
data modify storage pandamium:local functions."pandamium:triggers/flair/*".dialog.body[0].contents[2] set from storage pandamium:text input

data modify storage pandamium:text input set value {selector:"@s"}
function pandamium:utils/text/input/resolve
data modify storage pandamium:local functions."pandamium:triggers/flair/*".dialog.actions[].tooltip[-3] set from storage pandamium:text input

data modify storage pandamium:local functions."pandamium:triggers/flair/*".dialog.actions[].__uncolorable__ set value false
data modify storage pandamium:local functions."pandamium:triggers/flair/*".dialog.actions[{__colorable__:false}].__uncolorable__ set value true
data modify storage pandamium:local functions."pandamium:triggers/flair/*".dialog.actions[{__uncolorable__:false}].tooltip[-1].color set from storage pandamium.db.players:io selected.entry.data.flair.color
