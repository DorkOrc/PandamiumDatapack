tellraw @s [{text:"======== ",color:"yellow"},{text:"Staff Menu",bold:true},{text:" ========\n"},{text:"Player List:",bold:true}]

# Player List
function pandamium:triggers/staff_menu/print_menu/list

# Silent Punishments Option
tellraw @s ""
function pandamium:misc/print_own_announce_punishments_option

# Triggers
tellraw @s [{text:"",color:"aqua",font:"minecraft:uniform"},{text:"[toggle_spectator] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"toggle_spectator",color:"aqua"},{text:"\nClick to Run Trigger",color:"dark_gray"}]},click_event:{action:"run_command",command:"trigger toggle_spectator"}},{text:"[staff_world] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"staff_world",color:"aqua"},{text:"\nClick to Run Trigger",color:"dark_gray"}]},click_event:{action:"run_command",command:"trigger staff_world"}},{text:"[item_clear] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"item_clear",color:"aqua"},{text:"\nClick to Run Trigger",color:"dark_gray"}]},click_event:{action:"run_command",command:"trigger item_clear"}},{text:"[restart_server] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"restart_server",color:"aqua"},{text:"\nClick to Run Trigger",color:"dark_gray"}]},click_event:{action:"run_command",command:"trigger restart_server"}}]

execute if score @s staff_perms matches 1 run tellraw @s [{text:"",color:"yellow",font:"minecraft:uniform"},{text:"[jail] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray",extra:[{text:"jail",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},{text:"\n"},{text:"/trigger ",color:"gray",extra:[{text:"jail",color:"aqua"},{text:" set "},{text:"-1",color:"yellow"},{text:" (jails the nearest player)",color:"dark_gray"}]}]},click_event:{action:"suggest_command",command:"/trigger jail set "}},{text:"[unjail] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray",extra:[{text:"unjail",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},{text:"\n"},{text:"/trigger ",color:"gray",extra:[{text:"unjail",color:"aqua"},{text:" (prints jailed players)",color:"dark_gray"}]}]},click_event:{action:"suggest_command",command:"/trigger unjail set "}},{text:"[kick] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray",extra:[{text:"kick",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},{text:"\n"},{text:"/trigger ",color:"gray",extra:[{text:"kick",color:"aqua"},{text:" set "},{text:"-1",color:"yellow"},{text:" (kicks the nearest player)",color:"dark_gray"}]}]},click_event:{action:"suggest_command",command:"/trigger kick set "}},{text:"[auto_actions_log] ",color:"aqua",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"auto_actions_log",color:"aqua"},{text:"\nClick to Run Trigger",color:"dark_gray"}]},click_event:{action:"run_command",command:"trigger auto_actions_log"}}]
execute if score @s staff_perms matches 2.. run tellraw @s [{text:"",color:"yellow",font:"minecraft:uniform"},{text:"[jail] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray",extra:[{text:"jail",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},{text:"\n"},{text:"/trigger ",color:"gray",extra:[{text:"jail",color:"aqua"},{text:" set "},{text:"-1",color:"yellow"},{text:" (jails the nearest player)",color:"dark_gray"}]}]},click_event:{action:"suggest_command",command:"/trigger jail set "}},{text:"[unjail] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray",extra:[{text:"unjail",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},{text:"\n"},{text:"/trigger ",color:"gray",extra:[{text:"unjail",color:"aqua"},{text:" (prints jailed players)",color:"dark_gray"}]}]},click_event:{action:"suggest_command",command:"/trigger unjail set "}},{text:"[kick] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray",extra:[{text:"kick",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},{text:"\n"},{text:"/trigger ",color:"gray",extra:[{text:"kick",color:"aqua"},{text:" set "},{text:"-1",color:"yellow"},{text:" (kicks the nearest player)",color:"dark_gray"}]}]},click_event:{action:"suggest_command",command:"/trigger kick set "}},{text:"[ban] ",color:"gold",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"ban",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},click_event:{action:"suggest_command",command:"/trigger ban set "}},{text:"[auto_actions_log] ",color:"aqua",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"auto_actions_log",color:"aqua"},{text:"\nClick to Run Trigger",color:"dark_gray"}]},click_event:{action:"run_command",command:"trigger auto_actions_log"}}]

tellraw @s [{text:"",color:"yellow",font:"minecraft:uniform"},{text:"[player_info] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray",extra:[{text:"player_info",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},{text:"\n"},{text:"/trigger ",color:"gray",extra:[{text:"player_info",color:"aqua"},{text:" set "},{text:"-1",color:"yellow"},{text:" (nearest player)",color:"dark_gray"}]},{text:"\n"},{text:"/trigger ",color:"gray",extra:[{text:"player_info",color:"aqua"},{text:" set "},{text:"1",color:"yellow"},{text:" (selected player)",color:"dark_gray"}]}]},click_event:{action:"suggest_command",command:"/trigger player_info set "}},{text:"[inspect_inventory] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"inspect_inventory",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},click_event:{action:"suggest_command",command:"/trigger inspect_inventory set "}},{text:"[inspect_enderchest] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"inspect_enderchest",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},click_event:{action:"suggest_command",command:"/trigger inspect_enderchest set "}},{text:"[homes] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"homes",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},click_event:{action:"suggest_command",command:"/trigger homes set "}},{text:"[spawnpoint] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"spawnpoint",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},click_event:{action:"suggest_command",command:"/trigger spawnpoint set "}}]
tellraw @s [{text:"",color:"yellow",font:"minecraft:uniform"},{text:"[playtime] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"playtime",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},click_event:{action:"suggest_command",command:"/trigger playtime set "}},{text:"[vote] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"vote",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},click_event:{action:"suggest_command",command:"/trigger vote set "}},{text:"[guidebook] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"guidebook",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},click_event:{action:"suggest_command",command:"/trigger guidebook set "}},{text:"[discord] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"discord",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},click_event:{action:"suggest_command",command:"/trigger discord set "}},{text:"[inspect_container] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"inspect_container",color:"aqua"}]},click_event:{action:"suggest_command",command:"/trigger inspect_container"}}]

execute if score @s staff_perms matches 2.. run tellraw @s [{text:"",color:"gold",font:"minecraft:uniform"},{text:"[homes] ",hover_event:{action:"show_text",text:[[{text:"/trigger ",color:"gray"},{text:"homes",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]]},click_event:{action:"suggest_command",command:"/trigger homes set "}},{text:"[spawnpoint] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"spawnpoint",color:"aqua"},{text:" set "},{text:"-",color:"yellow"},{text:"<ID>",color:"yellow",underlined:true},{text:" (teleports in spectator mode)",color:"dark_gray"}]},click_event:{action:"suggest_command",command:"/trigger spawnpoint set -"}},{text:"[tp] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"tp",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true},{text:" (teleports in spectator mode)",color:"dark_gray"}]},click_event:{action:"suggest_command",command:"/trigger tp set "}},{text:"[pre_jail_tp] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"pre_jail_tp",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true},{text:" (teleports in spectator mode)",color:"dark_gray"}]},click_event:{action:"suggest_command",command:"/trigger pre_jail_tp set "}},{text:"[switch_dimension] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"switch_dimension",color:"aqua"}]},click_event:{action:"suggest_command",command:"/trigger switch_dimension"}}]

execute if score @s staff_perms matches 3.. run tellraw @s [{text:"",color:"#FB6F00",font:"minecraft:uniform"},{text:"[take_inventory] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"take_inventory",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},click_event:{action:"suggest_command",command:"/trigger take_inventory set "}},{text:"[take_enderchest] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"take_enderchest",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},click_event:{action:"suggest_command",command:"/trigger take_enderchest set "}},{text:"[take_bound_items] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"take_bound_items",color:"aqua"},{text:" set "},{text:"<ID>",color:"yellow",underlined:true}]},click_event:{action:"suggest_command",command:"/trigger take_bound_items set "}},{text:"[hide] ",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"hide",color:"aqua"},{text:"\n(toggles invisibility and particles)",color:"dark_gray"}]},click_event:{action:"suggest_command",command:"/trigger hide"}}]

tellraw @s {text:"=============================",color:"yellow"}
