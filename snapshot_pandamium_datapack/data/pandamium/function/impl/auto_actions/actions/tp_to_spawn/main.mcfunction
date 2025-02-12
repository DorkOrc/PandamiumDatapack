function pandamium:misc/warp/spawn

tellraw @a[scores={staff_perms=1..}] [{text:"[Staff Info] ",color:"dark_gray",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"yellow"},{text:"Spawn",bold:true}," in spectator mode"]},click_event:{action:"run_command",command:"trigger spawn set -1"}},{selector:"@s",color:"gray",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"yellow"},{text:"Spawn",bold:true}," in spectator mode"]},click_event:{action:"run_command",command:"trigger spawn set -1"}},{text:" was teleported to spawn!",color:"gray"}]
scoreboard players reset @s on_join.tp_to_spawn
