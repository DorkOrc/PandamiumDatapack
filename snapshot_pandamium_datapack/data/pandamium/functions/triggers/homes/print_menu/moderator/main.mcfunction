tellraw @a[tag=source,limit=1] [{"text":"======== ","color":"yellow"},{"text":"Homes List","bold":true}," ========\n",{"text":"Player: ","bold":true},{"storage":"pandamium.db:players","nbt":"selected.entry.username","color":"gold","bold":true}]

function pandamium:triggers/homes/print_menu/moderator/list

tellraw @a[tag=source,limit=1] {"text":"============================","color":"yellow"}
