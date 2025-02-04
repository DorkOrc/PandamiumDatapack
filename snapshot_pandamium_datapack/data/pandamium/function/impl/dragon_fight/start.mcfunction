scoreboard players set <dragon_fight> global 1

tellraw @a {"color":"dark_purple","italic":true,"text":"The Ender Dragon calls upon its henchmen..."}

team join dragon_fight @e[type=ender_dragon]
data merge entity @e[type=ender_dragon,limit=1] {CustomName:'{"color":"dark_purple","bold":true,"translate":"entity.minecraft.ender_dragon"}'}

execute in the_end at @e[type=ender_dragon,limit=1,x=0] summon marker run function pandamium:impl/dragon_fight/init_dragon_marker

execute in the_end run summon phantom 0 90 20 {Size:8,PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:120d,id:"minecraft:max_health"}],Health:120f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight",DeathLootTable:"minecraft:blocks/diamond_ore"}
execute in the_end run summon phantom 0 90 -20 {Size:8,PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:120d,id:"minecraft:max_health"}],Health:120f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight",DeathLootTable:"pandamium:items/custom/blindness_splash_potion"}
execute in the_end run summon phantom 20 90 0 {Size:8,PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:120d,id:"minecraft:max_health"}],Health:120f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight",DeathLootTable:"minecraft:blocks/diamond_ore"}
execute in the_end run summon phantom -20 90 0 {Size:8,PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:120d,id:"minecraft:max_health"}],Health:120f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight",DeathLootTable:"pandamium:items/custom/blindness_splash_potion"}
execute in the_end run summon phantom 0 110 20 {Size:8,PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:120d,id:"minecraft:max_health"}],Health:120f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight",DeathLootTable:"minecraft:blocks/diamond_ore"}
execute in the_end run summon phantom 0 110 -20 {Size:8,PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:120d,id:"minecraft:max_health"}],Health:120f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight",DeathLootTable:"pandamium:items/custom/blindness_splash_potion"}
execute in the_end run summon phantom 20 110 0 {Size:8,PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:120d,id:"minecraft:max_health"}],Health:120f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight",DeathLootTable:"minecraft:blocks/diamond_ore"}
execute in the_end run summon phantom -20 110 0 {Size:8,PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:120d,id:"minecraft:max_health"}],Health:120f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight",DeathLootTable:"pandamium:items/custom/blindness_splash_potion"}

execute in the_end run summon bat 0 90 20 {PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:1d,id:"minecraft:max_health"}],Health:1f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight"}
execute in the_end run summon bat 0 90 -20 {PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:1d,id:"minecraft:max_health"}],Health:1f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight"}
execute in the_end run summon bat 20 90 0 {PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:1d,id:"minecraft:max_health"}],Health:1f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight"}
execute in the_end run summon bat -20 90 0 {PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:1d,id:"minecraft:max_health"}],Health:1f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight"}
execute in the_end run summon bat 0 110 20 {PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:1d,id:"minecraft:max_health"}],Health:1f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight"}
execute in the_end run summon bat 0 110 -20 {PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:1d,id:"minecraft:max_health"}],Health:1f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight"}
execute in the_end run summon bat 20 110 0 {PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:1d,id:"minecraft:max_health"}],Health:1f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight"}
execute in the_end run summon bat -20 110 0 {PersistenceRequired:1b,Passengers:[{id:"minecraft:end_crystal",ShowBottom:false,Tags:["dragon_fight"]}],attributes:[{base:1d,id:"minecraft:max_health"}],Health:1f,CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight"}

execute in the_end run summon warden 0 64 0 {PersistenceRequired:1b,Brain:{memories:{"minecraft:dig_cooldown":{ttl:1200L,value:{}},"minecraft:is_emerging":{ttl:134L,value:{}}}},CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight",DeathLootTable:"minecraft:blocks/diamond_ore"}
execute in the_end run summon warden 0 64 0 {PersistenceRequired:1b,Brain:{memories:{"minecraft:dig_cooldown":{ttl:1200L,value:{}},"minecraft:is_emerging":{ttl:134L,value:{}}}},CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight",DeathLootTable:"pandamium:items/custom/blindness_splash_potion"}
execute in the_end run summon warden 0 64 0 {PersistenceRequired:1b,Brain:{memories:{"minecraft:dig_cooldown":{ttl:1200L,value:{}},"minecraft:is_emerging":{ttl:134L,value:{}}}},CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight",DeathLootTable:"minecraft:blocks/diamond_ore"}
execute in the_end run summon warden 0 64 0 {PersistenceRequired:1b,Brain:{memories:{"minecraft:dig_cooldown":{ttl:1200L,value:{}},"minecraft:is_emerging":{ttl:134L,value:{}}}},CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight",DeathLootTable:"pandamium:items/custom/blindness_splash_potion"}
execute in the_end run summon warden 0 64 0 {PersistenceRequired:1b,Brain:{memories:{"minecraft:dig_cooldown":{ttl:1200L,value:{}},"minecraft:is_emerging":{ttl:134L,value:{}}}},CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight",DeathLootTable:"minecraft:blocks/diamond_ore"}
execute in the_end run summon warden 0 64 0 {PersistenceRequired:1b,Brain:{memories:{"minecraft:dig_cooldown":{ttl:1200L,value:{}},"minecraft:is_emerging":{ttl:134L,value:{}}}},CustomName:'"Dragon\'s Henchman"',Tags:["dragon_fight"],Team:"dragon_fight",DeathLootTable:"pandamium:items/custom/blindness_splash_potion"}
execute in the_end positioned 0 64 0 run spreadplayers 0 0 30 40 false @e[type=warden,distance=..100]
execute in the_end positioned 0 64 0 at @e[type=warden,distance=..100] run place feature sculk_patch_deep_dark

execute in the_end as @e[x=0,y=64,z=0,distance=..100,type=warden] run function pandamium:impl/dragon_fight/modify_dragon_henchman

scoreboard players reset <dragon_fight_spawned_reinforcements> global
function pandamium:impl/dragon_fight/loop_dragon
function pandamium:impl/dragon_fight/prevent_darkness_effect
