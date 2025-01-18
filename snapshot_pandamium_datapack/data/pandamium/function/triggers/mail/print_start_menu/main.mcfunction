tellraw @s {storage:"pandamium:temp",nbt:"menu_header",interpret:true}
tellraw @s {text:"Main Menu\n",color:"aqua",bold:true,underlined:true}

data modify storage pandamium:temp unread_mails_notifier set value {text:""}
execute if score @s mail_data.unread_mails matches 1.. run data modify storage pandamium:temp unread_mails_notifier set value {text:" ",extra:[{text:"①",color:"#FF0000",hover_event:{action:"show_text",value:{text:"You have 1 unread mail in your inbox",color:"#FF0000"}}}]}
execute if score @s mail_data.unread_mails matches 2.. store result score <unread_mails> variable store result storage pandamium:templates macro.value.value int 1 run scoreboard players get @s mail_data.unread_mails
execute if score @s mail_data.unread_mails matches 2.. run function pandamium:utils/get/circled_number with storage pandamium:templates macro.value
execute if score @s mail_data.unread_mails matches 2.. run data modify storage pandamium:temp unread_mails_notifier.extra[0].text set from storage pandamium:temp circled_number

data modify storage pandamium:temp unclaimed_items_notifier set value {text:""}
execute unless score @s mail_data.unread_mails matches 1.. if score @s mail_data.unclaimed_items matches 1.. run data modify storage pandamium:temp unclaimed_items_notifier set value {text:" ",extra:[{text:"①",color:"green",hover_event:{action:"show_text",value:{text:"You have 1 unclaimed item in your inbox",color:"green"}}}]}
execute unless score @s mail_data.unread_mails matches 1.. if score @s mail_data.unclaimed_items matches 2.. store result score <unclaimed_items> variable store result storage pandamium:templates macro.value.value int 1 run scoreboard players get @s mail_data.unclaimed_items
execute unless score @s mail_data.unread_mails matches 1.. if score @s mail_data.unclaimed_items matches 2.. run function pandamium:utils/get/circled_number with storage pandamium:templates macro.value
execute unless score @s mail_data.unread_mails matches 1.. if score @s mail_data.unclaimed_items matches 2.. run data modify storage pandamium:temp unclaimed_items_notifier.extra[0].text set from storage pandamium:temp circled_number

data modify storage pandamium:temp mail_drafts_notifier set value {text:""}
execute if score @s mail_data.drafts matches 1.. run data modify storage pandamium:temp mail_drafts_notifier set value {text:" ",extra:[{text:"①",color:"yellow",hover_event:{action:"show_text",value:{text:"You have 1 draft in your drafts box",color:"yellow"}}}]}
execute if score @s mail_data.drafts matches 2.. store result score <drafts> variable store result storage pandamium:templates macro.value.value int 1 run scoreboard players get @s mail_data.drafts
execute if score @s mail_data.drafts matches 2.. run function pandamium:utils/get/circled_number with storage pandamium:templates macro.value
execute if score @s mail_data.drafts matches 2.. run data modify storage pandamium:temp mail_drafts_notifier.extra[0].text set from storage pandamium:temp circled_number

tellraw @s [{text:" "},{text:"[View Inbox]",extra:[{storage:"pandamium:temp",nbt:"unread_mails_notifier",interpret:true},{storage:"pandamium:temp",nbt:"unclaimed_items_notifier",interpret:true}],color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to go to ",color:"aqua"},{text:"Inbox",bold:true},{text:" page"}]},click_event:{action:"run_command",command:"trigger mail set 1000001"}}]

tellraw @s [\
    {text:" "},\
        {text:"[View Outbox]",color:"dark_aqua",hover_event:{action:"show_text",value:[{text:"Click to go to ",color:"dark_aqua"},{text:"Outbox",bold:true},{text:" page"}]},click_event:{action:"run_command",command:"trigger mail set 1000002"}},\
            {text:"  |  ",color:"green"},\
            {text:"[Drafts]",extra:[{storage:"pandamium:temp",nbt:"mail_drafts_notifier",interpret:true}],color:"dark_aqua",hover_event:{action:"show_text",value:[{text:"Click to go to ",color:"dark_aqua"},{text:"Drafts",bold:true},{text:" page"}]},click_event:{action:"run_command",command:"trigger mail set 1000005"}},\
    {text:"\n "},\
        {text:"[Send Mail]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to go to ",color:"blue"},{text:"Send Mail",bold:true},{text:" page"}]},click_event:{action:"run_command",command:"trigger mail set 1000003"}},\
    {text:"\n "},\
        {text:"[View News Feed]",color:"#00AA7F",hover_event:{action:"show_text",value:[{text:"Click to go to ",color:"#00AA7F"},{text:"News Feed",bold:true},{text:" page"}]},click_event:{action:"run_command",command:"trigger mail set 1000007"}},\
]

execute if score @s staff_perms matches 3.. if score @s send_extra_debug_info matches 2.. run tellraw @s [{text:" "},{text:"[View Server Outbox]",color:"#FF0000",hover_event:{action:"show_text",value:[{text:"Click to go to ",color:"#FF0000"},{text:"Server Outbox",bold:true},{text:" page"}]},click_event:{action:"run_command",command:"trigger mail set 1000004"}}]

execute if score @s staff_perms matches 1.. store result score <unread_staff_mails> variable if data storage pandamium.db.mail:data staff_inbox[{unread:1b}]
execute if score @s staff_perms matches 1.. run data modify storage pandamium:temp unread_mails_notifier set value ""
execute if score @s staff_perms matches 1.. if score <unread_staff_mails> variable matches 1.. run data modify storage pandamium:temp unread_mails_notifier set value {text:" ",extra:[{text:"①",color:"#FF0000",hover_event:{action:"show_text",value:{text:"There is 1 unread mail in the staff team's inbox",color:"#FF0000"}}}]}
execute if score @s staff_perms matches 1.. if score <unread_staff_mails> variable matches 2.. store result score <unread_mails> variable store result storage pandamium:templates macro.value.value int 1 run scoreboard players get @s mail_data.unread_mails
execute if score @s staff_perms matches 1.. if score <unread_staff_mails> variable matches 2.. run function pandamium:utils/get/circled_number with storage pandamium:templates macro.value
execute if score @s staff_perms matches 1.. if score <unread_staff_mails> variable matches 2.. run data modify storage pandamium:temp unread_mails_notifier.extra[0].text set from storage pandamium:temp circled_number
execute if score @s staff_perms matches 1.. store success score <unclaimed_items_in_staff_mails> variable if data storage pandamium.db.mail:data staff_inbox[{has_unclaimed_items:1b}]
execute if score @s staff_perms matches 1.. run data modify storage pandamium:temp unclaimed_items_notifier set value ""
execute if score @s staff_perms matches 1.. if score <unclaimed_items_in_staff_mails> variable matches 1 unless score <unread_staff_mails> variable matches 1.. run data modify storage pandamium:temp unclaimed_items_notifier set value {text:" ",extra:[{text:"⚠",color:"green",hover_event:{action:"show_text",value:{text:"There are unclaimed items in the staff team's inbox",color:"green"}}}]}
execute if score @s staff_perms matches 1.. run tellraw @s [{text:" "},{text:"[View Staff Team Inbox]",extra:[{storage:"pandamium:temp",nbt:"unread_mails_notifier",interpret:true},{storage:"pandamium:temp",nbt:"unclaimed_items_notifier",interpret:true}],color:"yellow",hover_event:{action:"show_text",value:[{text:"Click to go to ",color:"yellow"},{text:"Staff Team Inbox",bold:true},{text:" page"}]},click_event:{action:"run_command",command:"trigger mail set 1000008"}}]

tellraw @s [{text:"\n",color:"green",extra:[{text:"ℹ",color:"blue"},{text:" "},{text:"Hover here",color:"aqua"},{text:" to learn how to "},{text:"send mail",color:"aqua"},{text:"!"}],hover_event:{action:"show_text",value:[{text:"How to send a mail:",color:"aqua"},{text:"\n",color:"green",extra:[{text:"1. ",color:"gray"},{text:"Hold any item you want to send, or a Book and Quill with a message in it, in your main hand."},{text:"\n2. ",color:"gray"},{text:"Run "},{text:"/trigger",color:"gray",extra:[{text:" mail",color:"aqua"}]},{text:" and click "},{text:"[Send Mail]",color:"blue"},{text:" then the person you want to send the mail to."},{text:"\n3. ",color:"gray"},{text:"Open chat to look at the menu that has opened, and read through the information there. You can, optionally, add or edit a message and attach up to 5 item slots to the mail."},{text:"\n4. ",color:"gray"},{text:"Click the "},{text:"[Confirm]",color:"dark_green"},{text:" button to send the mail, or save it as a draft for later."}]}]}}]

tellraw @s {text:"======================",color:"aqua"}
