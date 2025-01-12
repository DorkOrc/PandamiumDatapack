function pandamium:player/take_items/inventory
function pandamium:player/take_items/enderchest

function pandamium:impl/auto_actions/actions/take_items/log

tellraw @a[scores={staff_perms=1..}] [{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"},{text:"'s items were taken! ",color:"gray"},{text:"[→]",color:"blue",hover_event:{action:"show_text",text:[{text:"Click to teleport to ",color:"blue"},{text:"Staff World",bold:true}]},click_event:{action:"run_command",command:"trigger staff_world"}}]
scoreboard players reset @s on_join.take_items
