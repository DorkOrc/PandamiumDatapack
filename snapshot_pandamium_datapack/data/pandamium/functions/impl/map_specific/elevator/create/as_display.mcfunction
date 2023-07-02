data modify entity @s Tags append from storage pandamium:temp location_tag
tag @s add elevator
tag @s add elevator.display

scoreboard players add <elevator_display_part> variable 1
execute if score <elevator_display_part> variable matches 1 run data merge entity @s {block_state:{Name:"minecraft:grindstone",Properties:{face:"ceiling",facing:"north"}},transformation:{translation:[-0.5f,-2f,-0.5f]}}
execute if score <elevator_display_part> variable matches 2 run data merge entity @s {block_state:{Name:"minecraft:spruce_trapdoor",Properties:{facing:"north",half:"top",open:"false"}},transformation:{translation:[-1.5f,-1f,-1.5f]}}
execute if score <elevator_display_part> variable matches 3 run data merge entity @s {block_state:{Name:"minecraft:spruce_stairs",Properties:{facing:"south",half:"top",shape:"straight"}},transformation:{translation:[-0.5f,-1f,-1.5f]}}
execute if score <elevator_display_part> variable matches 4 run data merge entity @s {block_state:{Name:"minecraft:spruce_trapdoor",Properties:{facing:"north",half:"top",open:"false"}},transformation:{translation:[0.5f,-1f,-1.5f]}}
execute if score <elevator_display_part> variable matches 5 run data merge entity @s {block_state:{Name:"minecraft:spruce_stairs",Properties:{facing:"east",half:"top",shape:"straight"}},transformation:{translation:[-1.5f,-1f,-0.5f]}}
execute if score <elevator_display_part> variable matches 6 run data merge entity @s {block_state:{Name:"minecraft:stripped_spruce_log",Properties:{axis:"y"}},transformation:{translation:[-0.5f,-1f,-0.5f]}}
execute if score <elevator_display_part> variable matches 7 run data merge entity @s {block_state:{Name:"minecraft:spruce_stairs",Properties:{facing:"west",half:"top",shape:"straight"}},transformation:{translation:[0.5f,-1f,-0.5f]}}
execute if score <elevator_display_part> variable matches 8 run data merge entity @s {block_state:{Name:"minecraft:spruce_trapdoor",Properties:{facing:"south",half:"top",open:"false"}},transformation:{translation:[-1.5f,-1f,0.5f]}}
execute if score <elevator_display_part> variable matches 9 run data merge entity @s {block_state:{Name:"minecraft:spruce_stairs",Properties:{facing:"north",half:"top",shape:"straight"}},transformation:{translation:[-0.5f,-1f,0.5f]}}
execute if score <elevator_display_part> variable matches 10 run data merge entity @s {block_state:{Name:"minecraft:spruce_trapdoor",Properties:{facing:"south",half:"top",open:"false"}},transformation:{translation:[0.5f,-1f,0.5f]}}
execute if score <elevator_display_part> variable matches 11 run data merge entity @s {block_state:{Name:"minecraft:chain",Properties:{axis:"y"}},transformation:{translation:[-1.5f,0f,-1.5f]}}
execute if score <elevator_display_part> variable matches 12 run data merge entity @s {block_state:{Name:"minecraft:chain",Properties:{axis:"y"}},transformation:{translation:[0.5f,0f,-1.5f]}}
execute if score <elevator_display_part> variable matches 13 run data merge entity @s {block_state:{Name:"minecraft:chain",Properties:{axis:"y"}},transformation:{translation:[-1.5f,0f,0.5f]}}
execute if score <elevator_display_part> variable matches 14 run data merge entity @s {block_state:{Name:"minecraft:chain",Properties:{axis:"y"}},transformation:{translation:[0.5f,0f,0.5f]}}
execute if score <elevator_display_part> variable matches 15 run data merge entity @s {block_state:{Name:"minecraft:chain",Properties:{axis:"y"}},transformation:{translation:[-1.5f,1f,-1.5f]}}
execute if score <elevator_display_part> variable matches 16 run data merge entity @s {block_state:{Name:"minecraft:chain",Properties:{axis:"y"}},transformation:{translation:[0.5f,1f,-1.5f]}}
execute if score <elevator_display_part> variable matches 17 run data merge entity @s {block_state:{Name:"minecraft:chain",Properties:{axis:"y"}},transformation:{translation:[-1.5f,1f,0.5f]}}
execute if score <elevator_display_part> variable matches 18 run data merge entity @s {block_state:{Name:"minecraft:chain",Properties:{axis:"y"}},transformation:{translation:[0.5f,1f,0.5f]}}
execute if score <elevator_display_part> variable matches 19 run data merge entity @s {block_state:{Name:"minecraft:chain",Properties:{axis:"y"}},transformation:{translation:[-1.5f,2f,-1.5f]}}
execute if score <elevator_display_part> variable matches 20 run data merge entity @s {block_state:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},transformation:{translation:[-0.5f,2f,-1.5f]}}
execute if score <elevator_display_part> variable matches 21 run data merge entity @s {block_state:{Name:"minecraft:chain",Properties:{axis:"y"}},transformation:{translation:[0.5f,2f,-1.5f]}}
execute if score <elevator_display_part> variable matches 22 run data merge entity @s {block_state:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},transformation:{translation:[-1.5f,2f,-0.5f]}}
execute if score <elevator_display_part> variable matches 23 run data merge entity @s {block_state:{Name:"minecraft:lantern",Properties:{hanging:"true"}},transformation:{translation:[-0.5f,2f,-0.5f]}}
execute if score <elevator_display_part> variable matches 24 run data merge entity @s {block_state:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},transformation:{translation:[0.5f,2f,-0.5f]}}
execute if score <elevator_display_part> variable matches 25 run data merge entity @s {block_state:{Name:"minecraft:chain",Properties:{axis:"y"}},transformation:{translation:[-1.5f,2f,0.5f]}}
execute if score <elevator_display_part> variable matches 26 run data merge entity @s {block_state:{Name:"minecraft:spruce_slab",Properties:{type:"top"}},transformation:{translation:[-0.5f,2f,0.5f]}}
execute if score <elevator_display_part> variable matches 27 run data merge entity @s {block_state:{Name:"minecraft:chain",Properties:{axis:"y"}},transformation:{translation:[0.5f,2f,0.5f]}}
execute if score <elevator_display_part> variable matches 28 run data merge entity @s {block_state:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},transformation:{translation:[-1.5f,3f,-1.5f]}}
execute if score <elevator_display_part> variable matches 29 run data merge entity @s {block_state:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},transformation:{translation:[0.5f,3f,-1.5f]}}
execute if score <elevator_display_part> variable matches 30 run data merge entity @s {block_state:{Name:"minecraft:smooth_stone"},transformation:{translation:[-0.5f,3f,-0.5f]}}
execute if score <elevator_display_part> variable matches 31 run data merge entity @s {block_state:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},transformation:{translation:[-1.5f,3f,0.5f]}}
execute if score <elevator_display_part> variable matches 32 run data merge entity @s {block_state:{Name:"minecraft:spruce_slab",Properties:{type:"bottom"}},transformation:{translation:[0.5f,3f,0.5f]}}
execute if score <elevator_display_part> variable matches 33 run data merge entity @s {block_state:{Name:"minecraft:grindstone",Properties:{face:"floor",facing:"north"}},transformation:{translation:[-0.5f,4f,-0.5f]}}

ride @s mount @e[type=item_display,tag=elevator.base_new,limit=1]

execute unless score <elevator_display_part> variable matches 33.. summon block_display run function pandamium:impl/map_specific/elevator/create/as_display
