# arguments: value

$tellraw @s ["",{"text":"\nConfirm Send: ","color":"aqua","bold":true},{"text":"[Confirm]","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to ","color":"dark_green"},{"text":"confirm","bold":true}," that the above\ndetails about your message are\ncorrect and send it to ",{"storage":"pandamium:temp","nbt":"display_name","interpret":true}]},"clickEvent":{"action":"run_command","value":"/trigger mail set $(value)"}}]
