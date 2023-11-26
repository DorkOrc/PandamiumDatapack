tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Mail","bold":true}," ========"]

tellraw @s "You have $(inbox_total) entries in your inbox"
tellraw @s "You have $(outbox_total) entries in your outbox"
tellraw @s ["",{"text":"[View Inbox]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":"Click to open Inbox"},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000001"}}," ",{"text":"[View Outbox]","color":"blue","hoverEvent":{"action":"show_text","contents":"Click to open Outbox"},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000002"}}," ",{"text":"[Send Mail]","color":"blue","hoverEvent":{"action":"show_text","contents":"Click to open Send Mail menu"},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000003"}}]

tellraw @s {"text":"==================================","color":"aqua"}
