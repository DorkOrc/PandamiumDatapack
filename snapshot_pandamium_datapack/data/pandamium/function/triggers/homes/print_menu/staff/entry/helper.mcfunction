$execute unless data storage pandamium.db.players:io selected.entry.data.homes.$(home) run tellraw @s [{text:"",color:"gold"},{text:"Home $(home): ",bold:true},{text:"Not Set",color:"gray"}]
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home) run tellraw @s [{text:"",color:"gold"},{storage:"pandamium:temp",nbt:"home_name",interpret:true,click_event:{action:"run_command",command:"trigger homes set $(user_and_home_id)"}},{text:" "},{text:"ℹ",color:"blue",hover_event:{action:"show_text",text:[{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[0]",color:"yellow"},{text:" "},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[1]"},{text:" "},{storage:"pandamium.db.players:io",nbt:"selected.entry.data.homes.$(home).xyzd[2]"},{text:" in "},{nbt:"dimension_name",storage:"pandamium:temp"},{text:"\nHome $(home)",color:"dark_gray"},{storage:"pandamium:temp",nbt:"home_plain_name_info",interpret:true},{text:"\n\n"},{storage:"pandamium:temp",nbt:"date_set_tooltip",interpret:true}]}}]
