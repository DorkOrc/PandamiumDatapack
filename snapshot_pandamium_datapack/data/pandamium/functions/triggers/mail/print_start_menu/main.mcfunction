tellraw @s {"storage":"pandamium:temp","nbt":"menu_header","interpret":true}
tellraw @s {"text":"Main Menu\n","color":"aqua","bold":true,"underlined":true}

execute store result storage pandamium:templates macro.value.value int 1 run scoreboard players get @s mail_data.unread_mails
data modify storage pandamium:temp unread_mails_notifier set value '""'
execute if score @s mail_data.unread_mails matches 1.. run function pandamium:utils/get/circled_number with storage pandamium:templates macro.value
execute if score @s mail_data.unread_mails matches 1.. run data modify storage pandamium:temp unread_mails_notifier set value '[" ",{"storage":"pandamium:temp","nbt":"circled_number","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"#FF0000"},{"score":{"name":"@s","objective":"mail_data.unread_mails"}}," unread mail(s) in your inbox"]}}]'

execute store result storage pandamium:templates macro.value.value int 1 run scoreboard players get @s mail_data.drafts
data modify storage pandamium:temp mail_drafts_notifier set value '""'
execute if score @s mail_data.drafts matches 1.. run function pandamium:utils/get/circled_number with storage pandamium:templates macro.value
execute if score @s mail_data.drafts matches 1.. run data modify storage pandamium:temp mail_drafts_notifier set value '[" ",{"storage":"pandamium:temp","nbt":"circled_number","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"yellow"},{"score":{"name":"@s","objective":"mail_data.drafts"}}," draft(s) in your drafts box"]}}]'

tellraw @s ["",{"text":" ","color":"gray"},[{"text":"[View Inbox]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"aqua"},{"text":"Inbox","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000001"}},{"storage":"pandamium:temp","nbt":"unread_mails_notifier","interpret":true}]]

execute if score @s staff_rank matches 1.. run tellraw @s ["",\
    " ",{"text":"[View Outbox]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"dark_aqua"},{"text":"Outbox","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000002"}},\
    {"text":"  |  ","color":"green"},[{"text":"[Drafts]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"dark_aqua"},{"text":"Drafts","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000005"}},{"storage":"pandamium:temp","nbt":"mail_drafts_notifier","interpret":true}],\
    "\n ",{"text":"[Send Mail]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"blue"},{"text":"Send Mail","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000003"}}\
]
execute unless score @s staff_rank matches 1.. run tellraw @s ["",\
    " ",{"text":"[View Outbox]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"This feature is still in development but will be available to you in the near future.","color":"gray"}]}},\
    "  |  ",{"text":"[View Drafts]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"This feature is still in development but will be available to you in the near future.","color":"gray"}]}},\
    "\n ",{"text":"[Send Mail]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"This feature is still in development but will be available to you in the near future.","color":"gray"}]}}\
]

execute if score @s staff_rank matches 3.. if score @s send_extra_debug_info matches 2.. run tellraw @s ["",{"text":" ","color":"gray"},{"text":"[View Server Outbox]","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"#FF0000"},{"text":"Server Outbox","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000004"}}]

execute if score @s staff_rank matches 1.. run tellraw @s [{"text":"\n","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"How to send a mail:","color":"aqua"},[{"text":"\n","color":"green"},{"text":"1. ","color":"gray"},"Write your message on the first page of a Book and Quill.",{"text":"\n2. ","color":"gray"},"Run ",[{"text":"/trigger","color":"gray"},{"text":" mail","color":"aqua"}," set",{"text":" <player id>","color":"yellow"}],".",{"text":"\n3. ","color":"gray"},"Open chat and look at the menu that has opened, and read through the information there. You can, optionally, add up to 5 item slots to the mail.",{"text":"\n4. ","color":"gray"},"Click the ",{"text":"[Confirm]","color":"dark_green"}," button to send the mail."]]}},{"text":"ℹ","color":"blue"}," ",{"text":"Hover here","color":"aqua"}," to learn how to ",{"text":"send mail","color":"aqua"},"!"]
tellraw @s [{"text":"","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"This feature is still in development so currently does not allow for regular players to send mail.\n\nYou may receive mail from the server or from staff members.\n\nOptions such as disabling mail from players, and an improved way to view your inbox and outbox will be added in the future."}]}},{"text":"ℹ","color":"blue"}," Disclaimer"]

tellraw @s {"text":"======================","color":"aqua"}
