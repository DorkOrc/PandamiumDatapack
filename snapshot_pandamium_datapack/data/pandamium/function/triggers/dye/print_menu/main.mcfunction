tellraw @s [{text:"======== ",color:"aqua"},{text:"Custom Dyes",bold:true},{text:" ========"}]

tellraw @s {text:"Options:",bold:true,color:"aqua"}
tellraw @s [{text:" ",color:"green"},\
            {text:"[Rainbow]",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to pick custom dye ",color:"aqua"},{text:"Rainbow",bold:true},{text:"\nThe colour will smoothly cycle through random colours.",color:"gray"},{text:"\n\n⚠ Warning: This will constantly trigger nearby sculk sensors.\n• You can prevent this by sneaking, which temporarily cancels the animation.",color:"red"}]},click_event:{action:"run_command",command:"trigger dye set -1"}},\
    {text:"  |  "},{text:"[Health]",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to pick custom dye ",color:"aqua"},{text:"Health",bold:true},{text:"\nThe colour will reflect your health bar - red for low health, green for full health.",color:"gray"},{text:"\n\n⚠ Warning: This will constantly trigger nearby sculk sensors while you have a health-affecting status effect.\n• You can prevent this by sneaking, which temporarily cancels the animation.",color:"red"}]},click_event:{action:"run_command",command:"trigger dye set -2"}},\
    {text:"  |  "},{text:"[Biome]",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to pick custom dye ",color:"aqua"},{text:"Biome",bold:true},{text:"\nThe colour will smoothly transition to blend in with the biome you are currently in.",color:"gray"},{text:"\n\n⚠ Warning: This will trigger nearby sculk sensors for a few seconds when transitioning between biomes.\n• You can prevent this by sneaking, which temporarily cancels or speeds up the transition.",color:"red"}]},click_event:{action:"run_command",command:"trigger dye set -3"}},\
]

tellraw @s [{text:"\n",color:"aqua"},\
    {text:"Solid Colour:",bold:true},{text:"\n "},\
        {text:"█",color:"#FF7F7F",insertion:"#FF7F7F",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#FF7F7F"},{text:"Light Red",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -327"}},\
        {text:"█",color:"#FFBF7F",insertion:"#FFBF7F",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#FFBF7F"},{text:"Light Orange",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -328"}},\
        {text:"█",color:"#FFFF7F",insertion:"#FFFF7F",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#FFFF7F"},{text:"Light Yellow",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -329"}},\
        {text:"█",color:"#D7FF7F",insertion:"#D7FF7F",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#D7FF7F"},{text:"Light Chartreuse",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -330"}},\
        {text:"█",color:"#7FFF7F",insertion:"#7FFF7F",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#7FFF7F"},{text:"Light Green",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -331"}},\
        {text:"█",color:"#7FFFD4",insertion:"#7FFFD4",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#7FFFD4"},{text:"Light Mint",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -332"}},\
        {text:"█",color:"#7FFFFF",insertion:"#7FFFFF",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#7FFFFF"},{text:"Light Cyan",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -333"}},\
        {text:"█",color:"#7FBFFF",insertion:"#7FBFFF",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#7FBFFF"},{text:"Light Azure",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -334"}},\
        {text:"█",color:"#7F7FFF",insertion:"#7F7FFF",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#7F7FFF"},{text:"Light Blue",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -335"}},\
        {text:"█",color:"#CB7FFF",insertion:"#CB7FFF",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#CB7FFF"},{text:"Light Violet",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -336"}},\
        {text:"█",color:"#FF7FFF",insertion:"#FF7FFF",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#FF7FFF"},{text:"Light Magenta",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -337"}},\
        {text:"█",color:"#FF7FBF",insertion:"#FF7FBF",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#FF7FBF"},{text:"Light Rose",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -338"}},\
        {text:"█",color:"#C29271",insertion:"#C29271",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#C29271"},{text:"Light Brown",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -344"}},\
        {text:"█",color:"#BFBFBF",insertion:"#BFBFBF",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#BFBFBF"},{text:"Light Grey",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -339"}},\
        {text:"█",color:"#FFFFFF",insertion:"#FFFFFF",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#FFFFFF"},{text:"White",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -341"}},\
    {text:"\n "},\
        {text:"█",color:"#FF0000",insertion:"#FF0000",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#FF0000"},{text:"Red",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -301"}},\
        {text:"█",color:"#FF7F00",insertion:"#FF7F00",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#FF7F00"},{text:"Orange",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -302"}},\
        {text:"█",color:"#FFFF00",insertion:"#FFFF00",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#FFFF00"},{text:"Yellow",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -303"}},\
        {text:"█",color:"#B0FF00",insertion:"#B0FF00",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#B0FF00"},{text:"Chartreuse",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -304"}},\
        {text:"█",color:"#00FF00",insertion:"#00FF00",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#00FF00"},{text:"Green",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -305"}},\
        {text:"█",color:"#00FFA9",insertion:"#00FFA9",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#00FFA9"},{text:"Mint",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -306"}},\
        {text:"█",color:"#00FFFF",insertion:"#00FFFF",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#00FFFF"},{text:"Cyan",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -307"}},\
        {text:"█",color:"#007FFF",insertion:"#007FFF",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#007FFF"},{text:"Azure",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -308"}},\
        {text:"█",color:"#0000FF",insertion:"#0000FF",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#0000FF"},{text:"Blue",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -309"}},\
        {text:"█",color:"#9700FF",insertion:"#9700FF",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#9700FF"},{text:"Violet",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -310"}},\
        {text:"█",color:"#FF00FF",insertion:"#FF00FF",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#FF00FF"},{text:"Magenta",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -311"}},\
        {text:"█",color:"#FF007F",insertion:"#FF007F",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#FF007F"},{text:"Rose",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -312"}},\
        {text:"█",color:"#8E5E3D",insertion:"#8E5E3D",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#8E5E3D"},{text:"Brown",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -342"}},\
        {text:"█",color:"#7F7F7F",insertion:"#7F7F7F",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#7F7F7F"},{text:"Grey",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -313"}},\
    {text:"\n "},\
        {text:"█",color:"#7F0000",insertion:"#7F0000",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#7F0000"},{text:"Dark Red",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -314"}},\
        {text:"█",color:"#7F3F00",insertion:"#7F3F00",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#7F3F00"},{text:"Dark Orange",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -315"}},\
        {text:"█",color:"#7F7F00",insertion:"#7F7F00",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#7F7F00"},{text:"Dark Yellow",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -316"}},\
        {text:"█",color:"#587F00",insertion:"#587F00",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#587F00"},{text:"Dark Chartreuse",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -317"}},\
        {text:"█",color:"#007F00",insertion:"#007F00",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#007F00"},{text:"Dark Green",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -318"}},\
        {text:"█",color:"#007F54",insertion:"#007F54",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#007F54"},{text:"Dark Mint",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -319"}},\
        {text:"█",color:"#007F7F",insertion:"#007F7F",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#007F7F"},{text:"Dark Cyan",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -320"}},\
        {text:"█",color:"#003F7F",insertion:"#003F7F",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#003F7F"},{text:"Dark Azure",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -321"}},\
        {text:"█",color:"#00007F",insertion:"#00007F",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#00007F"},{text:"Dark Blue",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -322"}},\
        {text:"█",color:"#4B007F",insertion:"#4B007F",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#4B007F"},{text:"Dark Violet",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -323"}},\
        {text:"█",color:"#7F007F",insertion:"#7F007F",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#7F007F"},{text:"Dark Magenta",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -324"}},\
        {text:"█",color:"#7F003F",insertion:"#7F003F",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#7F003F"},{text:"Dark Rose",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -325"}},\
        {text:"█",color:"#492C18",insertion:"#492C18",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#492C18"},{text:"Dark Brown",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -343"}},\
        {text:"█",color:"#3F3F3F",insertion:"#3F3F3F",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#3F3F3F"},{text:"Dark Grey",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -326"}},\
        {text:"█",color:"#000000",insertion:"#000000",hover_event:{action:"show_text",value:[{text:"Click to pick solid dye colour ",color:"#1F1F1F"},{text:"Black",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -340"}},\
]


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
data modify storage pandamium:text compound set value {text:"[Animated Gradients]"}
function pandamium:impl/font/custom_styles/gradient/main
function pandamium:utils/text/convert_compound_to_json
tellraw @s [{text:" "},{storage:"pandamium:text",nbt:"output",interpret:true,hover_event:{action:"show_text",value:[{text:"Click to pick gradient dye colours",color:"white"},{text:"\n\n⚠ Warning: This will constantly trigger nearby sculk sensors.\n• You can prevent this by sneaking, which temporarily cancels the animation.",color:"red"}]},click_event:{action:"run_command",command:"trigger dye set 101"}}]


tellraw @s [{text:"\nToggle: ",color:"green"},{text:"[Off]",color:"red",hover_event:{action:"show_text",value:[{text:"Click to toggle your custom dye ",color:"red"},{text:"Off",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -401"}},{text:"  |  "},{text:"[On]",color:"green",hover_event:{action:"show_text",value:[{text:"Click to toggle your custom dye ",color:"green"},{text:"On",bold:true}]},click_event:{action:"run_command",command:"trigger dye set -402"}}]

#tellraw @s [{text:"\n",color:"red",hover_event:{action:"show_text",value:[{text:"Click to join our ",color:"aqua"},{text:"Discord server",bold:true}]},click_event:{action:"open_url",url:"https://discord.gg/tPwg47bPyQ"}},{text:"Beta",bold:true},{text:" - This feature is new and incomplete and may be buggy! Please report any issues to the #issue-reports channel on Discord."}]
tellraw @s {text:"=============================",color:"aqua"}
