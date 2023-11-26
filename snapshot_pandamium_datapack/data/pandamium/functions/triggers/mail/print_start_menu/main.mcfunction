tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Mail","bold":true}," ========"]

tellraw @s ["",\
    {"text":"[View Inbox]","color":"aqua","hoverEvent":{"action":"show_text","contents":"Click to open Inbox"},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000001"}},"\n\n",\
    {"text":"[View Outbox]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":"Click to open Outbox"},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000002"}},"\n\n",\
    {"text":"[Send Mail]","color":"blue","hoverEvent":{"action":"show_text","contents":"Click to open Send Mail"},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000003"}}\
]

tellraw @s {"text":"==================================","color":"aqua"}
