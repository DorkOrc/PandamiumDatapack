# arguments: open_mail_input_value, open_draft_input_value

# inbox
execute if predicate pandamium:mail_list_type/inbox if score <self> variable matches 1 run data modify storage pandamium:temp unclaimed_items_suffix set value '""'
execute if predicate pandamium:mail_list_type/inbox if score <self> variable matches 1 if score <has_available_attached_items> variable matches 1 run data modify storage pandamium:temp unclaimed_items_suffix set value '[" ",{"text":"⚠","color":"green","hoverEvent":{"action":"show_text","contents":{"text":"Attached Items!","color":"green"}}}]'

$execute if predicate pandamium:mail_list_type/inbox if score <self> variable matches 1 if data storage pandamium:temp entry_info{ephemeral:1b} run return run tellraw @s [{text:"• "},{text:"",hover_event:{action:"show_text",text:[{text:""},{text:"Click to view ephemeral mail\n",color:"#7AA4BB"},{storage:"pandamium:temp",nbt:"entry_info.display_info_components[]",interpret:true,separator:"\n"}]},click_event:{action:"run_command",command:"trigger mail set $(open_mail_input_value)"},extra:[{text:"[👁]",color:"#7AA4BB"},{text:" "},{storage:"pandamium:temp",nbt:"entry_info.read_status_colour",interpret:true,extra:[{storage:"pandamium:temp",nbt:"entry_info.data.title",interpret:true,underlined:true}]},{storage:"pandamium:temp",nbt:"unclaimed_items_suffix",interpret:true}]},{text:"\n └ "},{text:"from: ",color:"gray"},{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"entry_info.sender.display_name",interpret:true}]},{text:" "},{text:"[⌚]",color:"dark_gray",hover_event:{action:"show_text",text:[{text:"Sent "},{storage:"pandamium:temp",nbt:"time_phrase",interpret:true}]}}]
$execute if predicate pandamium:mail_list_type/inbox if score <self> variable matches 1 run return run tellraw @s [{text:"• "},{text:"",hover_event:{action:"show_text",text:[{text:""},{text:"Click to view mail\n",color:"blue"},{storage:"pandamium:temp",nbt:"entry_info.display_info_components[]",interpret:true,separator:"\n"}]},click_event:{action:"run_command",command:"trigger mail set $(open_mail_input_value)"},extra:[{text:"[👁]",color:"blue"},{text:" "},{storage:"pandamium:temp",nbt:"entry_info.read_status_colour",interpret:true,extra:[{storage:"pandamium:temp",nbt:"entry_info.data.title",interpret:true,underlined:true}]},{storage:"pandamium:temp",nbt:"unclaimed_items_suffix",interpret:true}]},{text:"\n └ "},{text:"from: ",color:"gray"},{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"entry_info.sender.display_name",interpret:true}]},{text:" "},{text:"[⌚]",color:"dark_gray",hover_event:{action:"show_text",text:[{text:"Sent "},{storage:"pandamium:temp",nbt:"time_phrase",interpret:true}]}}]

execute if predicate pandamium:mail_list_type/inbox if score <self> variable matches 0 if data storage pandamium:temp entry_info{ephemeral:1b} run return run tellraw @s [{text:"• "},{text:"",hover_event:{action:"show_text",text:[{text:""},{storage:"pandamium:temp",nbt:"entry_info.display_info_components[]",interpret:true,separator:"\n"},{text:"\nEphemeral",color:"gray"}]},extra:[[{storage:"pandamium:temp",nbt:"entry_info.read_status_colour",interpret:true},{storage:"pandamium:temp",nbt:"entry_info.data.title",interpret:true,underlined:true}]]},{text:"\n └ "},{text:"from: ",color:"gray"},{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"entry_info.sender.display_name",interpret:true}]},{text:" "},{text:"[⌚]",color:"dark_gray",hover_event:{action:"show_text",text:[{text:"Sent "},{storage:"pandamium:temp",nbt:"time_phrase",interpret:true}]}}]
execute if predicate pandamium:mail_list_type/inbox if score <self> variable matches 0 run return run tellraw @s [{text:"• "},{text:"",hover_event:{action:"show_text",text:[{text:""},{storage:"pandamium:temp",nbt:"entry_info.display_info_components[]",interpret:true,separator:"\n"}]},extra:[{text:"[👁]",color:"dark_gray"},{text:" "},{storage:"pandamium:temp",nbt:"entry_info.read_status_colour",interpret:true,extra:[{storage:"pandamium:temp",nbt:"entry_info.data.title",interpret:true,underlined:true}]}]},{text:"\n └ "},{text:"from: ",color:"gray"},{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"entry_info.sender.display_name",interpret:true}]},{text:" "},{text:"[⌚]",color:"dark_gray",hover_event:{action:"show_text",text:[{text:"Sent "},{storage:"pandamium:temp",nbt:"time_phrase",interpret:true}]}}]

# outbox
execute if predicate pandamium:mail_list_type/any_outbox run return run tellraw @s [{text:"• "},{text:"",hover_event:{action:"show_text",text:[{text:""},{storage:"pandamium:temp",nbt:"entry_info.display_info_components[]",interpret:true,separator:"\n"}]},extra:[{text:"[👁]",color:"dark_gray"},{text:" "},{storage:"pandamium:temp",nbt:"entry_info.read_status_colour",interpret:true,extra:[{storage:"pandamium:temp",nbt:"entry_info.data.title",interpret:true,underlined:true}]}]},{text:"\n └ "},{text:"to: ",color:"gray"},{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"entry_info.receivers[].display_name",interpret:true,separator:{text:", ",color:"white"}}]},{text:" "},{text:"[⌚]",color:"dark_gray",hover_event:{action:"show_text",text:[{text:"Sent "},{storage:"pandamium:temp",nbt:"time_phrase",interpret:true}]}}]

# drafts
execute if predicate pandamium:mail_list_type/drafts if score <self> variable matches 0 run return run tellraw @s [{text:"• "},{text:"",hover_event:{action:"show_text",text:[{text:""},{storage:"pandamium:temp",nbt:"entry_info.display_info_components[]",interpret:true,separator:"\n"}]},extra:[{text:"[👁]",color:"dark_gray"},{text:" "},{storage:"pandamium:temp",nbt:"entry_info.read_status_colour",interpret:true,extra:[{storage:"pandamium:temp",nbt:"entry_info.data.title",interpret:true,underlined:true}]}]},{text:"\n └ "},{text:"to: ",color:"gray"},{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"entry_info.receivers[].display_name",interpret:true,separator:{text:", ",color:"white"}}]},{text:" "},{text:"[⌚]",color:"dark_gray",hover_event:{action:"show_text",text:[{text:"Created "},{storage:"pandamium:temp",nbt:"time_phrase",interpret:true}]}}]
$execute if predicate pandamium:mail_list_type/drafts if score <self> variable matches 1 run return run tellraw @s [{text:"• "},{text:"",hover_event:{action:"show_text",text:[{text:""},{text:"Click to view, modify, send, or delete draft\n",color:"yellow"},{storage:"pandamium:temp",nbt:"entry_info.display_info_components[]",interpret:true,separator:"\n"}]},click_event:{action:"run_command",command:"trigger mail set $(open_draft_input_value)"},extra:[{text:"[👁]",color:"yellow"},{text:" "},{storage:"pandamium:temp",nbt:"entry_info.read_status_colour",interpret:true,extra:[{storage:"pandamium:temp",nbt:"entry_info.data.title",interpret:true,underlined:true}]}]},{text:"\n └ "},{text:"to: ",color:"gray"},{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"entry_info.receivers[].display_name",interpret:true,separator:{text:", ",color:"white"}}]},{text:" "},{text:"[⌚]",color:"dark_gray",hover_event:{action:"show_text",text:[{text:"Created "},{storage:"pandamium:temp",nbt:"time_phrase",interpret:true}]}}]

# news feed
$execute if predicate pandamium:mail_list_type/news_feed_inbox run return run tellraw @s [{text:"• "},{text:"",hover_event:{action:"show_text",text:[{text:""},{text:"Click to view post\n",color:"blue"},{storage:"pandamium:temp",nbt:"entry_info.display_info_components[]",interpret:true,separator:"\n"}]},click_event:{action:"run_command",command:"trigger mail set $(open_mail_input_value)"},extra:[{text:"[👁]",color:"blue"},{text:" "},{storage:"pandamium:temp",nbt:"entry_info.read_status_colour",interpret:true,extra:[{storage:"pandamium:temp",nbt:"entry_info.data.title",interpret:true,underlined:true}]}]},{text:"\n └ "},{text:"posted ",color:"gray",extra:[{storage:"pandamium:temp",nbt:"time_phrase",interpret:true}]}]

# staff_inbox
execute if predicate pandamium:mail_list_type/staff_inbox run data modify storage pandamium:temp unclaimed_items_suffix set value '""'
execute if predicate pandamium:mail_list_type/staff_inbox if score <has_available_attached_items> variable matches 1 run data modify storage pandamium:temp unclaimed_items_suffix set value '[" ",{"text":"⚠","color":"green","hoverEvent":{"action":"show_text","contents":{"text":"Attached Items!","color":"green"}}}]'
$execute if predicate pandamium:mail_list_type/staff_inbox if data storage pandamium:temp entry_info{ephemeral:1b} run return run tellraw @s [{text:"• "},{text:"",hover_event:{action:"show_text",text:[{text:""},{text:"Click to view ephemeral mail\n",color:"#7AA4BB"},{storage:"pandamium:temp",nbt:"entry_info.display_info_components[]",interpret:true,separator:"\n"}]},click_event:{action:"run_command",command:"trigger mail set $(open_mail_input_value)"},extra:[{text:"[👁]",color:"#7AA4BB"},{text:" "},{storage:"pandamium:temp",nbt:"entry_info.read_status_colour",interpret:true,extra:[{storage:"pandamium:temp",nbt:"entry_info.data.title",interpret:true,underlined:true}]},{storage:"pandamium:temp",nbt:"unclaimed_items_suffix",interpret:true}]},{text:"\n └ "},{text:"from: ",color:"gray"},{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"entry_info.sender.display_name",interpret:true}]},{text:" "},{text:"[⌚]",color:"dark_gray",hover_event:{action:"show_text",text:[{text:"Sent "},{storage:"pandamium:temp",nbt:"time_phrase",interpret:true}]}}]
$execute if predicate pandamium:mail_list_type/staff_inbox run return run tellraw @s [{text:"• "},{text:"",hover_event:{action:"show_text",text:[{text:""},{text:"Click to view mail\n",color:"blue"},{storage:"pandamium:temp",nbt:"entry_info.display_info_components[]",interpret:true,separator:"\n"}]},click_event:{action:"run_command",command:"trigger mail set $(open_mail_input_value)"},extra:[{text:"[👁]",color:"blue"},{text:" "},{storage:"pandamium:temp",nbt:"entry_info.read_status_colour",interpret:true,extra:[{storage:"pandamium:temp",nbt:"entry_info.data.title",interpret:true,underlined:true}]},{storage:"pandamium:temp",nbt:"unclaimed_items_suffix",interpret:true}]},{text:"\n └ "},{text:"from: ",color:"gray"},{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"entry_info.sender.display_name",interpret:true}]},{text:" "},{text:"[⌚]",color:"dark_gray",hover_event:{action:"show_text",text:[{text:"Sent "},{storage:"pandamium:temp",nbt:"time_phrase",interpret:true}]}}]

