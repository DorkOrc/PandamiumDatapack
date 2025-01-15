tellraw @s [{text:"======== ",color:"aqua"},{text:"Sign Font Menu",bold:true},{text:" ========\n"},\
    {text:"Pick A Line",bold:true,color:"green"},\
        {text:"\n"},{text:"[Line 1]",color:"light_purple",hover_event:{action:"show_text",value:[{text:"Click to choose ",color:"light_purple"},{text:"Line 1",bold:true}]},click_event:{action:"run_command",command:"trigger sign_font set 2"}},\
        {text:"\n"},{text:"[Line 2]",color:"light_purple",hover_event:{action:"show_text",value:[{text:"Click to choose ",color:"light_purple"},{text:"Line 2",bold:true}]},click_event:{action:"run_command",command:"trigger sign_font set 3"}},\
        {text:"\n"},{text:"[Line 3]",color:"light_purple",hover_event:{action:"show_text",value:[{text:"Click to choose ",color:"light_purple"},{text:"Line 3",bold:true}]},click_event:{action:"run_command",command:"trigger sign_font set 4"}},\
        {text:"\n"},{text:"[Line 4]",color:"light_purple",hover_event:{action:"show_text",value:[{text:"Click to choose ",color:"light_purple"},{text:"Line 4",bold:true}]},click_event:{action:"run_command",command:"trigger sign_font set 5"}},\
        {text:"\n"},{text:"[All Lines]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Click to choose ",color:"dark_purple"},{text:"All Lines",bold:true}]},click_event:{action:"run_command",command:"trigger sign_font set 6"}},\
        {text:"\n=============================="},\
    ]
