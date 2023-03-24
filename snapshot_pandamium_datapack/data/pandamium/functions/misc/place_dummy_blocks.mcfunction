execute in pandamium:staff_world run fill 0 0 0 4 0 0 air
execute in pandamium:staff_world run setblock 1 0 0 barrel{Lock:'§r'}
execute in pandamium:staff_world run setblock 2 0 0 yellow_shulker_box{Lock:'§r'}
execute in pandamium:staff_world run setblock 3 0 0 oak_sign{is_waxed:1b}
execute in pandamium:staff_world run setblock 4 0 0 lectern[has_book=false]{Book:{Count:1b,id:written_book,tag:{title:'',author:'',pages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}','{"text":""}'],resolved:1b}}}

execute in pandamium:staff_world run setblock 6 64 3 air
execute in pandamium:staff_world run setblock 6 64 3 oak_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['{"text":""}','{"text":"[Restore Lore]","bold":true,"clickEvent":{"action":"run_command","value":"/function pandamium:misc/jail_items/restore_lore/main"}}','{"text":""}','{"text":""}']}}

execute in pandamium:staff_world unless loaded 0 0 0 run schedule function pandamium:misc/place_dummy_blocks 1t
