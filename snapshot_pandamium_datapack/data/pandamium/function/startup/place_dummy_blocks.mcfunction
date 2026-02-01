## Force-Load
# Generic single chunk per dimension
execute in minecraft:overworld run forceload add 29999999 29999999
execute in minecraft:the_nether run forceload add 29999999 29999999
execute in minecraft:the_end run forceload add 29999999 29999999
execute in pandamium:staff_world run forceload add 29999999 29999999
execute in pandamium:sandbox run forceload add 29999999 29999999
execute in pandamium:hub run forceload add 29999999 29999999
# stored items database
execute in pandamium:staff_world run forceload add 128000 128000
# spawn area (2x2)
execute in pandamium:hub run forceload add -289 175 -288 176
# world spawn
execute in pandamium:hub run forceload add 0 0
# staff world platform (2x2)
execute in pandamium:staff_world run forceload add -1 -1 0 0

## Wait until all required areas are loaded
execute in minecraft:overworld unless loaded 29999999 0 29999999 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in minecraft:the_nether unless loaded 29999999 0 29999999 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in minecraft:the_end unless loaded 29999999 0 29999999 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:staff_world unless loaded 29999999 0 29999999 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:sandbox unless loaded 29999999 0 29999999 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:hub unless loaded 29999999 0 29999999 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:staff_world unless loaded 128000 0 128000 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:hub unless loaded -289 0 175 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:hub unless loaded -289 0 176 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:hub unless loaded -288 0 175 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:hub unless loaded -288 0 176 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:hub unless loaded 0 0 0 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:staff_world unless loaded -1 0 -1 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:staff_world unless loaded -1 0 0 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:staff_world unless loaded 0 0 -1 run return run schedule function pandamium:startup/place_dummy_blocks 1t
execute in pandamium:staff_world unless loaded 0 0 0 run return run schedule function pandamium:startup/place_dummy_blocks 1t

## Place dummy blocks
execute in pandamium:staff_world run fill -1 3 2 8 -1 -1 barrier
execute in pandamium:staff_world run setblock 1 0 0 barrel{lock:{count:{max:-1}}} strict
execute in pandamium:staff_world run fill 2 0 0 2 1 0 yellow_shulker_box{lock:{count:{max:-1}}} strict
execute in pandamium:staff_world run setblock 3 0 0 oak_sign{is_waxed:true} strict
execute in pandamium:staff_world run setblock 4 0 0 lectern[has_book=false]{Book:{id:"minecraft:written_book",components:{"minecraft:written_book_content":{pages:[{raw:""},{raw:""},{raw:""},{raw:""},{raw:""}],author:"",title:{raw:""},resolved:true}}}} strict
execute in pandamium:staff_world run fill 5 0 0 5 1 0 decorated_pot{} strict
execute in pandamium:staff_world run setblock 6 0 0 repeating_command_block{Command:"_",auto:true} strict
execute in pandamium:staff_world run setblock 6 1 0 command_block{Command:"datapack list enabled",auto:true} strict
execute in pandamium:staff_world run setblock 7 0 0 test_block[mode=log]{message:"[Pandamium] n/a",mode:"log",powered:false} strict

execute in minecraft:overworld run setblock 29999999 0 29999999 yellow_shulker_box{lock:{count:{max:-1}}} strict
execute in minecraft:the_nether run setblock 29999999 0 29999999 yellow_shulker_box{lock:{count:{max:-1}}} strict
execute in minecraft:the_end run setblock 29999999 0 29999999 yellow_shulker_box{lock:{count:{max:-1}}} strict
execute in pandamium:staff_world run setblock 29999999 0 29999999 yellow_shulker_box{lock:{count:{max:-1}}} strict
execute in pandamium:sandbox run setblock 29999999 0 29999999 yellow_shulker_box{lock:{count:{max:-1}}} strict
execute in pandamium:hub run setblock 29999999 0 29999999 yellow_shulker_box{lock:{count:{max:-1}}} strict

scoreboard players set <dummy_blocks_loaded> global 1

## Run commands that run on load but require dummy blocks to be loaded

function pandamium:startup/temporary_database_fix/main

# place the staff world platform "jail items" chests' sign
execute in pandamium:staff_world run setblock 6 64 3 oak_wall_sign[facing=west]{front_text:{messages:["",{bold:true,click_event:{action:"run_command",command:"function pandamium:impl/jail_items/restore_lore/main"},text:"[Restore Lore]"},"",""]},is_waxed:true} strict

# generate guidebook data
function pandamium:startup/store_guidebook_contents

# store special characters
function pandamium:startup/store_special_characters

# check for leader board monthly reset (function checks date)
#function pandamium:impl/leaderboards/on_month_start/main

# get a list of all enabled data packs
#schedule function pandamium:startup/get_enabled_datapacks 2t

# worldspawn block
execute in pandamium:hub run setblock 0 317 0 barrier strict
execute in pandamium:hub run fill 0 318 0 0 319 0 light[level=0] strict
execute in pandamium:hub run forceload remove 0 0

# rewards shop
function pandamium:startup/rewards_shop/load_rewards
function pandamium:startup/rewards_shop/load_pages

# check for carpet mod enabled through creeper explosions
execute in pandamium:staff_world run setblock 0 -60 0 minecraft:glass
execute in pandamium:staff_world run summon minecraft:creeper 0.5 -60.0 0.5 {powered:true,Fuse:0,Tags:["pandamium.defused"]}
scoreboard players set <disable_tnt_auto_defuse> global 1
gamerule mob_griefing true
schedule function pandamium:startup/check_creeper_explosion_block_damage 1t
