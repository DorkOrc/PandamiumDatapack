tellraw @s {"storage":"pandamium:temp","nbt":"menu_header","interpret":true}

tellraw @s {"text":"Main Menu\n","color":"aqua","bold":true,"underlined":true}

tellraw @s ["",{"text":" ","color":"gray"},{"text":"[View Inbox]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"aqua"},{"text":"Inbox","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000001"}}]

execute if score @s staff_rank matches 1.. run tellraw @s ["",\
    {"text":" ","color":"gray"},{"text":"[View Outbox]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"aqua"},{"text":"Outbox","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000002"}},"\n",\
    {"text":" ","color":"gray"},{"text":"[Send Mail]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"blue"},{"text":"Send Mail","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000003"}}\
]
execute unless score @s staff_rank matches 1.. run tellraw @s ["",\
    {"text":" ","color":"gray"},{"text":"[View Outbox]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"This feature is still in development but will be available to you in the near future.","color":"gray"}]}},"\n",\
    {"text":" ","color":"gray"},{"text":"[Send Mail]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"This feature is still in development but will be available to you in the near future.","color":"gray"}]}}\
]

tellraw @s [{"text":"\nInfo ","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"This feature is still in development so currently does not allow for regular players to send mail.\n\nYou may receive mail from the server or from staff members.\n\nOptions such as disabling mail from players, and an improved way to view your inbox and outbox will be added in the future."}]}},{"text":"ℹ","color":"blue"}]

tellraw @s {"text":"======================","color":"aqua"}
