# wait until all required areas are loaded
execute in minecraft:overworld unless loaded 29999999 0 29999999 run schedule function pandamium:startup/place_dummy_blocks 1t
execute in minecraft:the_nether unless loaded 29999999 0 29999999 run schedule function pandamium:startup/place_dummy_blocks 1t
execute in minecraft:the_end unless loaded 29999999 0 29999999 run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:staff_world unless loaded 29999999 0 29999999 run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:staff_world unless loaded 128000 0 128000 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:staff_world unless loaded 0 0 0 run return run schedule function pandamium:startup/place_dummy_blocks 1t

# main dummy blocks
execute in pandamium:staff_world run fill 0 0 0 6 2 0 air
execute in pandamium:staff_world run setblock 1 0 0 barrel{Lock:"§r"}
execute in pandamium:staff_world run setblock 2 0 0 yellow_shulker_box{Lock:"§r"}
execute in pandamium:staff_world run setblock 3 0 0 oak_sign{is_waxed:1b}
execute in pandamium:staff_world run setblock 4 0 0 lectern[has_book=false]{Book:{Count:1b,id:"minecraft:written_book",tag:{title:"",author:"",pages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}'],resolved:1b}}}
execute in pandamium:staff_world run setblock 5 0 0 decorated_pot
execute in pandamium:staff_world run setblock 6 0 0 repeating_command_block{Command:"_",auto:1b}
execute in pandamium:staff_world run fill -1 2 1 7 -1 -1 minecraft:barrier replace air

execute in minecraft:overworld run setblock 29999999 0 29999999 yellow_shulker_box

execute in minecraft:the_nether run setblock 29999999 0 29999999 yellow_shulker_box

execute in minecraft:the_end run setblock 29999999 0 29999999 yellow_shulker_box

scoreboard players set <dummy_blocks_loaded> global 1

## commands that run on load but require dummy blocks to be loaded

function pandamium:startup/temporary_database_fix/main

# staff world platform jail items chests sign
execute in pandamium:staff_world run setblock 6 64 3 air
execute in pandamium:staff_world run setblock 6 64 3 oak_wall_sign[facing=west]{front_text:{messages:['""','{"bold":true,"clickEvent":{"action":"run_command","value":"/function pandamium:impl/jail_items/restore_lore/main"},"text":"[Restore Lore]"}','""','""']},is_waxed:1b}

# generate guidebook data
function pandamium:startup/store_guidebook_contents

# check for leader board monthly reset (function checks date)
function pandamium:impl/leaderboards/on_month_start/main
