function pandamium:misc/start_restart_countdown/generic
scoreboard players set <seconds_until_restart> global 30

tellraw @a[predicate=pandamium:player/min_staff_perms/helper] [{text:"[Staff Info]",color:"dark_gray"},{text:" Click to cancel the server restart: ",color:"gray"},{text:"[❌]",color:"dark_red",hover_event:{action:"show_text",value:[{text:"Click to ",color:"dark_red"},{text:"cancel",bold:true}," the server restart"]},click_event:{action:"run_command",command:"trigger restart_server set -3"}}]
