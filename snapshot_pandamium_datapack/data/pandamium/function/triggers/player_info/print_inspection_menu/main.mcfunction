# arguments: username, id, id_with_leading_zeroes

$tellraw @s [{text:"======== ",color:"yellow"},{text:"Player Info",bold:true}," ========",{text:"\nPlayer: ",bold:true,color:"yellow"},{text:"",color:"white",extra:[{storage:"pandamium:temp",nbt:"target",interpret:true}]}," (",{score:{name:"$(username)",objective:"id"},bold:true},")"]

# playtimes
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".playtime_display_modifiers set value [{text:{text:"[this_month]",color:"dark_gray",hover_event:{action:"show_text",value:[{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.monthly_playtime[3]"},{text:"h "},{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.monthly_playtime[2]"},{text:"m "},{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.monthly_playtime[1]"},{text:"s"}]}},type:"monthly"},{text:{text:"[this_year]",color:"dark_gray",hover_event:{action:"show_text",value:[{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.yearly_playtime[3]"},{text:"h "},{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.yearly_playtime[2]"},{text:"m "},{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.yearly_playtime[1]"},{text:"s"}]}},type:"yearly"}]

$scoreboard players operation <ticks> variable = $(username) playtime_ticks
function pandamium:utils/get/time_from_ticks_without_days
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".total_playtime set from storage pandamium:temp time

$scoreboard players operation <ticks> variable = $(username) monthly_playtime_ticks
execute unless score <ticks> variable matches 1.. run data remove storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".playtime_display_modifiers[{type:"monthly"}]
function pandamium:utils/get/time_from_ticks_without_days
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".monthly_playtime set from storage pandamium:temp time

$scoreboard players operation <ticks> variable = $(username) yearly_playtime_ticks
execute unless score <ticks> variable matches 1.. run data remove storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".playtime_display_modifiers[{type:"yearly"}]
function pandamium:utils/get/time_from_ticks_without_days
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".yearly_playtime set from storage pandamium:temp time

tellraw @s [{text:" playtime: ",color:"gold"},\
    {text:"",color:"yellow",extra:[{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.total_playtime[3]"},"h ",{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.total_playtime[2]"},"m ",{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.total_playtime[1]"},"s"]}," ",\
    {storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.playtime_display_modifiers[].text",interpret:true,separator:" "},\
]

# session length
$scoreboard players operation <ticks> variable = $(username) online_ticks
function pandamium:utils/get/time_from_ticks_without_days
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".session_playtime set from storage pandamium:temp time

execute if score <target_is_online> variable matches 1 run tellraw @s [{text:" session_length: ",color:"gold"},{text:"",color:"yellow",extra:[{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.session_playtime[3]"},"h ",{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.session_playtime[2]"},"m ",{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.session_playtime[1]"},"s"]}]

# votes
$data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".votes_display_modifiers set value [{text:{text:"[this_month]",color:"dark_gray",hover_event:{action:"show_text",value:[{score:{name:"$(username)",objective:"monthly_votes"}}]}},type:"monthly"},{text:{text:"[this_year]",color:"dark_gray",hover_event:{action:"show_text",value:[{score:{name:"$(username)",objective:"yearly_votes"}}]}},type:"yearly"}]
$execute unless score $(username) monthly_votes matches 1.. run data remove storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".votes_display_modifiers[{type:"monthly"}]
$execute unless score $(username) yearly_votes matches 1.. run data remove storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".votes_display_modifiers[{type:"yearly"}]

$execute if score $(username) votes matches 1.. run tellraw @s [{text:" votes: ",color:"gold"},\
    {score:{name:"$(username)",objective:"votes"},color:"yellow"}," ",\
    {storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.votes_display_modifiers[].text",interpret:true,separator:" "},\
]

# last known position
$execute store result score <dimension> variable run scoreboard players get $(username) last_position.d
function pandamium:utils/get/dimension_name/from_score
$execute if score $(username) last_position.y matches -2147483648.. run tellraw @s [{text:" last_position: ",color:"gold"},{text:"[👁]",color:"dark_gray",hover_event:{action:"show_text",value:[{text:"",color:"gold"},{score:{name:"$(username)",objective:"last_position.x"},color:"yellow",extra:[" ",{score:{name:"$(username)",objective:"last_position.y"}}," ",{score:{name:"$(username)",objective:"last_position.z"}}]}," in ",{nbt:"dimension_name",storage:"pandamium:temp",color:"yellow"}]}}," ",{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s last position"]},click_event:{action:"run_command",command:"trigger tp set $(id)"}}," ",{text:"[🔙]",color:"red",hover_event:{action:"show_text",value:[{text:"Click to teleport ",color:"red"},{storage:"pandamium:temp",nbt:"target",interpret:true}," to spawn and reset their ",{text:"spawnpoint",bold:true},{text:"\nIf they are offline, they will\nbe teleported when they next\njoin the server.",color:"gray"}]},click_event:{action:"run_command",command:"trigger player_info set -9$(id_with_leading_zeroes)"}}]
$execute unless score $(username) last_position.y matches -2147483648.. run tellraw @s [{text:" last_position: ",color:"gold"},{text:"Unknown",color:"gray"}," ",{text:"[🔙]",color:"red",hover_event:{action:"show_text",value:[{text:"Click to teleport ",color:"red"},{storage:"pandamium:temp",nbt:"target",interpret:true}," to spawn",{text:"\nIf they are offline, they will\nbe teleported when they next\njoin the server.",color:"gray"}]},click_event:{action:"run_command",command:"trigger player_info set -9$(id_with_leading_zeroes)"}}]
# used y here because some players' last_position.x were accidentally set to 0 when they should be unset

# last set spawnpoint
$scoreboard players operation <dimension> variable = $(username) spawnpoint_d
function pandamium:utils/get/dimension_name/from_score
$execute if score $(username) spawnpoint_x matches -2147483648.. run tellraw @s [{text:" last_set_spawnpoint: ",color:"gold"},{text:"[👁]",color:"dark_gray",hover_event:{action:"show_text",value:[{text:"",color:"gold"},{score:{name:"$(username)",objective:"spawnpoint_x"},color:"yellow",extra:[" ",{score:{name:"$(username)",objective:"spawnpoint_y"}}," ",{score:{name:"$(username)",objective:"spawnpoint_z"}}]}," in ",{nbt:"dimension_name",storage:"pandamium:temp",color:"yellow"}]}}," ",{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s ",{text:"spawnpoint",bold:true}]},click_event:{action:"run_command",command:"trigger spawnpoint set -$(id)"}}]

# pre-jail position
$execute store result score <dimension> variable run scoreboard players get $(username) pre_jail_pos_d
function pandamium:utils/get/dimension_name/from_score
$execute if score $(username) pre_jail_pos_x matches -2147483648.. run tellraw @s [{text:" pre_jail_position: ",color:"gold"},{text:"[👁]",color:"dark_gray",hover_event:{action:"show_text",value:[{text:"",color:"gold"},{score:{name:"$(username)",objective:"pre_jail_pos_x"},color:"yellow",extra:[" ",{score:{name:"$(username)",objective:"pre_jail_pos_y"}}," ",{score:{name:"$(username)",objective:"pre_jail_pos_z"}}]}," in ",{nbt:"dimension_name",storage:"pandamium:temp",color:"yellow"}]}}," ",{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s pre-jail position"]},click_event:{action:"run_command",command:"trigger pre_jail_tp set $(id)"}}]

# last death location
execute if score <target_is_online> variable matches 1 run data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".last_death_location set from entity @a[predicate=pandamium:matches_id,limit=1] LastDeathLocation
function pandamium:utils/get/dimension_name/from_string_id with storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".last_death_location
$execute if score <target_is_online> variable matches 1 run tellraw @s [{text:" last_death_location: ",color:"gold"},{text:"[👁]",color:"dark_gray",hover_event:{action:"show_text",value:[{text:"",color:"gold"},{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.last_death_location.pos[]",separator:" ",color:"yellow"}," in ",{nbt:"dimension_name",storage:"pandamium:temp",color:"yellow"}]}}," ",{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s ",{text:"last death location",bold:true}]},click_event:{action:"run_command",command:"trigger player_info set -8$(id_with_leading_zeroes)"}}]

# first join date
$execute store result score <datetime_id> variable run scoreboard players get $(username) first_joined.datetime
function pandamium:utils/datetime/decompose_datetime_id
execute store result storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".month int 1 run scoreboard players get <month> variable
function pandamium:utils/get/month_name with storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*"
data modify storage pandamium:temp month_name set string storage pandamium:temp month_name 0 3
function pandamium:utils/datetime/get_datetime_text {args:_}
$execute if score $(username) first_joined.datetime = $(username) first_joined.datetime run tellraw @s [{text:" first_join_date: ",color:"gold"},{storage:"pandamium:temp",nbt:"month_name",color:"yellow",extra:[" ",{score:{name:"<year>",objective:"variable"}}]}," ",{text:"[⌚]",color:"dark_gray",hover_event:{action:"show_text",value:{color:"yellow",storage:"pandamium:temp",nbt:"datetime_text.date_time",interpret:true}}}]

# last join date
$execute store result score <datetime_id> variable run scoreboard players get $(username) last_joined.datetime
function pandamium:utils/datetime/decompose_datetime_id
execute store result storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".month int 1 run scoreboard players get <month> variable
function pandamium:utils/get/month_name with storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*"
data modify storage pandamium:temp month_name set string storage pandamium:temp month_name 0 3
function pandamium:utils/datetime/get_datetime_text {args:_}
$execute if score $(username) last_joined.datetime = $(username) last_joined.datetime run tellraw @s [{text:" last_join_date: ",color:"gold"},{storage:"pandamium:temp",nbt:"month_name",color:"yellow",extra:[" ",{score:{name:"<year>",objective:"variable"}}]}," ",{text:"[⌚]",color:"dark_gray",hover_event:{action:"show_text",value:{color:"yellow",storage:"pandamium:temp",nbt:"datetime_text.date_time",interpret:true}}}]

# alt information
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".alt_ids set from storage pandamium.db.players:io selected.entry.data.alts
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".alt_names set value []
execute if data storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".alt_ids[0] in pandamium:staff_world run function pandamium:triggers/player_info/print_inspection_menu/alts_loop with storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".alt_ids[0]
execute if data storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".alt_names[0] run tellraw @s [{text:" known_alts: ",color:"gold"},{text:"",color:"yellow",extra:[{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.alt_names[]",interpret:true,separator:{text:", ",color:"gray"}}]}]

execute if data storage pandamium.db.players:io selected.entry.data.alt_of in pandamium:staff_world run function pandamium:triggers/player_info/print_inspection_menu/get_alt_of with storage pandamium.db.players:io selected.entry.data.alt_of
execute if data storage pandamium.db.players:io selected.entry.data.alt_of run tellraw @s [{text:" alt_of: ",color:"gold"},{text:"",color:"yellow",extra:[{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.display_alt_of",interpret:true}]}]

# teleport history
#function pandamium:triggers/player_info/print_teleport_history_menu/main
$tellraw @s [{text:" tp_history: ",color:"gold"},{text:"[👁]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to see ",color:"blue"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s ",{text:"Teleport History",bold:true}]},click_event:{action:"run_command",command:"trigger player_info set -1$(id_with_leading_zeroes)"}}]

# inventory
$execute if score <target_is_online> variable matches 1 run tellraw @s [{text:" inventory: ",color:"gold"},\
        {text:"[👁]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to see ",color:"blue"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s ",{text:"inventory",bold:true}]},click_event:{action:"run_command",command:"trigger inspect_inventory set $(id)"}}," ",\
        {text:"[Take]",color:"dark_blue",hover_event:{action:"show_text",value:[{text:"Click to move ",color:"blue"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s ",{text:"inventory",bold:true}," to the staff world",{text:"\n\nA command will be suggested to you, not automatically ran",color:"dark_gray"}]},click_event:{action:"suggest_command",command:"/trigger take_inventory set $(id)"}},\
]

# ender chest
$execute if score <target_is_online> variable matches 1 if items entity @a[predicate=pandamium:matches_id,limit=1] enderchest.* * run tellraw @s [{text:" ender_chest: ",color:"gold"},\
        {text:"[👁]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to see ",color:"blue"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s ",{text:"ender chest",bold:true}]},click_event:{action:"run_command",command:"trigger inspect_enderchest set $(id)"}}," ",\
        {text:"[Take]",color:"dark_blue",hover_event:{action:"show_text",value:[{text:"Click to move ",color:"blue"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s ",{text:"ender chest",bold:true}," to the staff world",{text:"\n\nA command will be suggested to you, not automatically ran",color:"dark_gray"}]},click_event:{action:"suggest_command",command:"/trigger take_enderchest set $(id)"}},\
]

# items (offline)
$execute if score <target_is_online> variable matches 0 run tellraw @s [{text:" items: ",color:"gold"},\
        {text:"[Take]",color:"dark_blue",hover_event:{action:"show_text",value:[{text:"Click to move ",color:"blue"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s ",{text:"inventory & ender chest",bold:true}," to the staff world",{text:"\n\nTheir items will be taken when\nthey next join the server.",color:"dark_gray"}]},click_event:{action:"run_command",command:"trigger player_info set -10$(id_with_leading_zeroes)"}},\
]

# homes
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes set value []
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:1}] merge from storage pandamium.db.players:io selected.entry.data.homes.1
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:2}] merge from storage pandamium.db.players:io selected.entry.data.homes.2
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:3}] merge from storage pandamium.db.players:io selected.entry.data.homes.3
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:4}] merge from storage pandamium.db.players:io selected.entry.data.homes.4
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:5}] merge from storage pandamium.db.players:io selected.entry.data.homes.5
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:6}] merge from storage pandamium.db.players:io selected.entry.data.homes.6
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:7}] merge from storage pandamium.db.players:io selected.entry.data.homes.7
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:8}] merge from storage pandamium.db.players:io selected.entry.data.homes.8
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:9}] merge from storage pandamium.db.players:io selected.entry.data.homes.9
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:10}] merge from storage pandamium.db.players:io selected.entry.data.homes.10
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:11}] merge from storage pandamium.db.players:io selected.entry.data.homes.11
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:12}] merge from storage pandamium.db.players:io selected.entry.data.homes.12
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:13}] merge from storage pandamium.db.players:io selected.entry.data.homes.13
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:14}] merge from storage pandamium.db.players:io selected.entry.data.homes.14
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:15}] merge from storage pandamium.db.players:io selected.entry.data.homes.15
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:16}] merge from storage pandamium.db.players:io selected.entry.data.homes.16
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:17}] merge from storage pandamium.db.players:io selected.entry.data.homes.17
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:18}] merge from storage pandamium.db.players:io selected.entry.data.homes.18
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:19}] merge from storage pandamium.db.players:io selected.entry.data.homes.19
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:20}] merge from storage pandamium.db.players:io selected.entry.data.homes.20
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:21}] merge from storage pandamium.db.players:io selected.entry.data.homes.21
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:22}] merge from storage pandamium.db.players:io selected.entry.data.homes.22
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:23}] merge from storage pandamium.db.players:io selected.entry.data.homes.23
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:24}] merge from storage pandamium.db.players:io selected.entry.data.homes.24
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[{slot:25}] merge from storage pandamium.db.players:io selected.entry.data.homes.25

execute store result score <number_of_homes> variable if data storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes[]
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".homes_formatted set value []
execute if score <number_of_homes> variable matches 1.. in pandamium:staff_world run function pandamium:triggers/player_info/print_inspection_menu/homes_loop

$execute if score <number_of_homes> variable matches 1.. run tellraw @s [{text:" homes: ",color:"gold"},\
        {score:{name:"<number_of_homes>",objective:"variable"},color:"yellow",hover_event:{action:"show_text",value:{storage:"pandamium:local",nbt:"functions.'pandamium:triggers/player_info/print_inspection_menu/*'.homes_formatted[]",interpret:true,separator:"\n"}}}," ",\
        {text:"[👁]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to see ",color:"blue"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s ",{text:"homes",bold:true}]},click_event:{action:"run_command",command:"trigger homes set $(id)"}},\
]

# mail
scoreboard players set <display_mail> variable 1
execute unless data storage pandamium.db.players:io selected.entry.data.mail.inbox[0] unless data storage pandamium.db.players:io selected.entry.data.mail.outbox[0] run scoreboard players set <display_mail> variable 0
$execute if score <display_mail> variable matches 1 run tellraw @s [{text:" mail: ",color:"gold"},\
        {text:"[Inbox]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to see ",color:"blue"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s ",{text:"Inbox",bold:true},{text:"\n\nA command will be suggested to you, not automatically ran",color:"dark_gray"}]},click_event:{action:"suggest_command",command:"/trigger player_info set -2$(id_with_leading_zeroes)"}}," ",\
        {text:"[Outbox]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to see ",color:"blue"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s ",{text:"Outbox",bold:true},{text:"\n\nA command will be suggested to you, not automatically ran",color:"dark_gray"}]},click_event:{action:"suggest_command",command:"/trigger player_info set -3$(id_with_leading_zeroes)"}},\
]

# misc
$tellraw @s ["",\
        {text:"Punishments:",color:"aqua",bold:true}," ",\
        {text:"[Jail]",color:"light_purple",hover_event:{action:"show_text",value:[{text:"Click to jail ",color:"light_purple"},{storage:"pandamium:temp",nbt:"target",interpret:true},{text:"\n\nA command will be suggested to you, not automatically ran",color:"dark_gray"}]},click_event:{action:"suggest_command",command:"/trigger jail set $(id)"}}," ",\
        {text:"[Unjail]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Click to unjail ",color:"dark_purple"},{storage:"pandamium:temp",nbt:"target",interpret:true},{text:"\n\nA command will be suggested to you, not automatically ran",color:"dark_gray"}]},click_event:{action:"suggest_command",command:"/trigger unjail set $(id)"}}," ",\
        {text:"[Kick]",color:"dark_aqua",hover_event:{action:"show_text",value:[{text:"Click to kick ",color:"dark_aqua"},{storage:"pandamium:temp",nbt:"target",interpret:true},{text:"\nPlayer must be online",color:"red"},{text:"\n\nA command will be suggested to you, not automatically ran",color:"dark_gray"}]},click_event:{action:"suggest_command",command:"/trigger kick set $(id)"}}," ",\
        {text:"[Ban]",color:"red",hover_event:{action:"show_text",value:[{text:"Click to ban ",color:"red"},{storage:"pandamium:temp",nbt:"target",interpret:true},{text:"\nPlayer must be online",color:"red"},{text:"\n\nA command will be suggested to you, not automatically ran",color:"dark_gray"}]},click_event:{action:"suggest_command",command:"/trigger ban set $(id)"}},\
    "\n",\
        {text:"RTP Cooldown:",color:"aqua",bold:true}," ",\
        {text:"[none]",color:"green",hover_event:{action:"show_text",value:[{text:"Click to remove ",color:"green"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s RTP trigger restrictions"]},click_event:{action:"run_command",command:"trigger player_info set -4$(id_with_leading_zeroes)"}}," ",{text:"[5m]",color:"yellow",hover_event:{action:"show_text",value:[{text:"Click to set ",color:"yellow"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s RTP cooldown to 5 minutes"]},click_event:{action:"run_command",command:"trigger player_info set -5$(id_with_leading_zeroes)"}}," ",{text:"[1h]",color:"yellow",hover_event:{action:"show_text",value:[{text:"Click to set ",color:"yellow"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s RTP cooldown to 1 hour"]},click_event:{action:"run_command",command:"trigger player_info set -6$(id_with_leading_zeroes)"}}," ",{text:"[∞]",color:"red",hover_event:{action:"show_text",value:[{text:"Click to disable ",color:"red"},{storage:"pandamium:temp",nbt:"target",interpret:true},"'s RTP trigger"]},click_event:{action:"run_command",command:"trigger player_info set -7$(id_with_leading_zeroes)"}},\
]

tellraw @s {text:"=============================",color:"yellow"}

return 1
