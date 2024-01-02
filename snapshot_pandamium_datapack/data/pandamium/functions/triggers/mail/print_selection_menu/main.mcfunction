tellraw @s [{"storage":"pandamium:temp","nbt":"menu_header","interpret":true},"\n",{"text":"Players:","bold":true}]

function pandamium:triggers/mail/print_selection_menu/list

tellraw @s ["\n",{"text":"Pages: ","color":"yellow","bold":true},{"storage":"pandamium:dictionary","nbt":"triggers.mail.main_menu_button","interpret":true}]
tellraw @s {"text":"======================","color":"aqua"}
