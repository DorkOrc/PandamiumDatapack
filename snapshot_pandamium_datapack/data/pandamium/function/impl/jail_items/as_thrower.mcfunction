scoreboard players set <player_exists> variable 1
tellraw @a[scores={staff_perms=1..}] [{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"},{text:" threw an item in jail! ",color:"gray"},{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{text:"The Staff World",bold:true}]},click_event:{action:"run_command",command:"trigger staff_world set 5"}}]

function pandamium:utils/get/username
data modify storage pandamium:local functions."pandamium:impl/jail_items/*".lore[0] set value {text:"Dropped by ",color:"gray",italic:false,extra:[{storage:"pandamium:temp",nbt:"username",color:"gray"}]}
