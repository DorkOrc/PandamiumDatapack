# wait until all required areas are loaded
execute in minecraft:overworld unless loaded 29999999 0 29999999 run schedule function pandamium:startup/place_dummy_blocks 1t
execute in minecraft:the_nether unless loaded 29999999 0 29999999 run schedule function pandamium:startup/place_dummy_blocks 1t
execute in minecraft:the_end unless loaded 29999999 0 29999999 run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:staff_world unless loaded 29999999 0 29999999 run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:staff_world unless loaded 128000 0 128000 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:staff_world unless loaded 0 0 0 run return run schedule function pandamium:startup/place_dummy_blocks 1t

# place the main dummy blocks
execute in pandamium:staff_world run fill -1 3 2 8 -1 -1 barrier
execute in pandamium:staff_world run setblock 1 0 0 barrel{lock:{count:{max:-1}}} strict
execute in pandamium:staff_world run fill 2 0 0 2 1 0 yellow_shulker_box{lock:{count:{max:-1}}} strict
execute in pandamium:staff_world run setblock 3 0 0 oak_sign{is_waxed:1b} strict
execute in pandamium:staff_world run setblock 4 0 0 lectern[has_book=false]{Book:{id:"minecraft:written_book",components:{"minecraft:written_book_content":{pages:[{raw:""},{raw:""},{raw:""},{raw:""},{raw:""}],author:"",title:{raw:""},resolved:1b}}}} strict
execute in pandamium:staff_world run fill 5 0 0 5 1 0 decorated_pot{} strict
execute in pandamium:staff_world run setblock 6 0 0 repeating_command_block{Command:"_",auto:1b} strict
execute in pandamium:staff_world run setblock 6 1 0 command_block{Command:"datapack list enabled",auto:1b} strict
execute in pandamium:staff_world run setblock 7 0 0 test_block[mode=log]{message:"[Pandamium] n/a",mode:"log",powered:0b} strict

execute in minecraft:overworld run setblock 29999999 0 29999999 yellow_shulker_box{lock:{count:{max:-1}}} strict
execute in minecraft:the_nether run setblock 29999999 0 29999999 yellow_shulker_box{lock:{count:{max:-1}}} strict
execute in minecraft:the_end run setblock 29999999 0 29999999 yellow_shulker_box{lock:{count:{max:-1}}} strict

scoreboard players set <dummy_blocks_loaded> global 1

## commands that run on load but require dummy blocks to be loaded

function pandamium:startup/temporary_database_fix/main

# place the staff world platform "jail items" chests' sign
execute in pandamium:staff_world run setblock 6 64 3 oak_wall_sign[facing=west]{front_text:{messages:["",{bold:true,click_event:{action:"run_command",command:"function pandamium:impl/jail_items/restore_lore/main"},text:"[Restore Lore]"},"",""]},is_waxed:1b} strict

# generate guidebook data
function pandamium:startup/store_guidebook_contents

# store special characters
function pandamium:startup/store_special_characters

# check for leader board monthly reset (function checks date)
#function pandamium:impl/leaderboards/on_month_start/main

# get a list of all enabled data packs
schedule function pandamium:startup/get_enabled_datapacks 2t

# worldspawn block
setblock 0 317 0 barrier strict
fill 0 318 0 0 319 0 air strict
