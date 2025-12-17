execute unless loaded -320 0 112 run return fail

kill @e[x=0,tag=elevator.id.map_room]

fill -313 110 121 -311 148 123 air strict
fill -312 110 122 -312 148 122 minecraft:iron_chain[axis=y]

fill -313 109 121 -311 109 123 minecraft:waxed_exposed_copper_grate strict

place template pandamium:elevator -313 109 121 none none 1 0 strict

kill @e[x=-312.0,y=109.0,z=122.0,distance=..1,tag=hub.map_room_elevator_shaft]
summon minecraft:block_display -312.0 109.0 122.0 {Tags:["hub.map_room_elevator_shaft"],block_state:{Name:"minecraft:iron_chain"},width:1,height:1}


# buttons
kill @e[x=-315,y=111,z=119,dx=6,dy=36,dz=6,tag=elevator_button]
kill @e[x=-315,y=111,z=119,dx=6,dy=36,dz=6,tag=custom_block.elevator_button]
kill @e[x=0,tag=elevator.button,tag=elevator.id.map_room]

summon minecraft:interaction -309.05 145.25 121.50 {Tags:["elevator","elevator.button","elevator.id.map_room"],data:{elevator:{id:"map_room",button:{to:"bottom"}}},response:true,width:0.5,height:0.5}
summon minecraft:item_display -309.05 145.25 121.5 {Tags:["elevator","elevator.button","elevator.display","elevator.id.map_room"],item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzZjNzZkN2M0ZjI1YTg5NTQxNDRjNDNmOTg5NDE5NGIzNTgwMDk1ZGY4OGE1ODEyODQyNDg0ZTU3YWUxZmVkMCJ9fX0="}]}}},Rotation:[-90,0],transformation:{left_rotation:[0,0,0,1],translation:[0,0.5,0.049],right_rotation:[0,0,0,1],scale:[1,1,0.01]},width:0.5,height:0.5}
summon minecraft:interaction -309.05 145.25 122.50 {Tags:["elevator","elevator.button","elevator.id.map_room"],data:{elevator:{id:"map_room",button:{to:"middle"}}},response:true,width:0.5,height:0.5}
summon minecraft:item_display -309.05 145.25 122.5 {Tags:["elevator","elevator.button","elevator.display","elevator.id.map_room"],item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDVjMDgxYjg5Y2E1MjExOGE4MzJmYTQxNThhNTRhYzEyM2JkMjQ5MDU3ZWVmM2IxMWQ4Y2I5ZmM2ZWQ3MDdlNSJ9fX0="}]}}},Rotation:[-90,0],transformation:{left_rotation:[0,0,0,1],translation:[0,0.5,0.049],right_rotation:[0,0,0,1],scale:[1,1,0.01]},width:0.5,height:0.5}
summon minecraft:interaction -309.05 145.25 123.50 {Tags:["elevator","elevator.button","elevator.id.map_room"],data:{elevator:{id:"map_room",button:{to:"top"}}},response:true,width:0.5,height:0.5}
summon minecraft:item_display -309.05 145.25 123.5 {Tags:["elevator","elevator.button","elevator.display","elevator.id.map_room"],item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDExYzI0MGM4YTU5MzAxOGY2MjYwYThkM2VlMWM0ZDllZjJmNThhOWY1OWJhNmRlZWFmYmM2YWM5YzU2ODA5OCJ9fX0="}]}}},Rotation:[-90,0],transformation:{left_rotation:[0,0,0,1],translation:[0,0.5,0.049],right_rotation:[0,0,0,1],scale:[1,1,0.01]},width:0.5,height:0.5}
summon minecraft:text_display -309.01 144.75 122.5 {Tags:["elevator","elevator.button","elevator.display","elevator.id.map_room"],Rotation:[90,0],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0],scale:[0.5,0.5,1]},text:"Use these buttons to choose which floor to travel to."}

summon minecraft:interaction -310.50 128.25 124.95 {Tags:["elevator","elevator.button","elevator.id.map_room"],data:{elevator:{id:"map_room",button:{to:"bottom"}}},response:true,width:0.5,height:0.5}
summon minecraft:item_display -310.5 128.25 124.95 {Tags:["elevator","elevator.button","elevator.display","elevator.id.map_room"],item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzZjNzZkN2M0ZjI1YTg5NTQxNDRjNDNmOTg5NDE5NGIzNTgwMDk1ZGY4OGE1ODEyODQyNDg0ZTU3YWUxZmVkMCJ9fX0="}]}}},transformation:{left_rotation:[0,0,0,1],translation:[0,0.5,0.049],right_rotation:[0,0,0,1],scale:[1,1,0.01]},width:0.5,height:0.5}
summon minecraft:interaction -311.50 128.25 124.95 {Tags:["elevator","elevator.button","elevator.id.map_room"],data:{elevator:{id:"map_room",button:{to:"middle"}}},response:true,width:0.5,height:0.5}
summon minecraft:item_display -311.5 128.25 124.95 {Tags:["elevator","elevator.button","elevator.display","elevator.id.map_room"],item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDVjMDgxYjg5Y2E1MjExOGE4MzJmYTQxNThhNTRhYzEyM2JkMjQ5MDU3ZWVmM2IxMWQ4Y2I5ZmM2ZWQ3MDdlNSJ9fX0="}]}}},transformation:{left_rotation:[0,0,0,1],translation:[0,0.5,0.049],right_rotation:[0,0,0,1],scale:[1,1,0.01]},width:0.5,height:0.5}
summon minecraft:interaction -312.50 128.25 124.95 {Tags:["elevator","elevator.button","elevator.id.map_room"],data:{elevator:{id:"map_room",button:{to:"top"}}},response:true,width:0.5,height:0.5}
summon minecraft:item_display -312.5 128.25 124.95 {Tags:["elevator","elevator.button","elevator.display","elevator.id.map_room"],item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDExYzI0MGM4YTU5MzAxOGY2MjYwYThkM2VlMWM0ZDllZjJmNThhOWY1OWJhNmRlZWFmYmM2YWM5YzU2ODA5OCJ9fX0="}]}}},transformation:{left_rotation:[0,0,0,1],translation:[0,0.5,0.049],right_rotation:[0,0,0,1],scale:[1,1,0.01]},width:0.5,height:0.5}
summon minecraft:text_display -311.5 127.75 124.99 {Tags:["elevator","elevator.button","elevator.display","elevator.id.map_room"],Rotation:[180,0],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0],scale:[0.5,0.5,1]},text:"Use these buttons to choose which floor to travel to."}

summon minecraft:interaction -309.05 112.25 121.50 {Tags:["elevator","elevator.button","elevator.id.map_room"],data:{elevator:{id:"map_room",button:{to:"bottom"}}},response:true,width:0.5,height:0.5}
summon minecraft:item_display -309.05 112.25 121.5 {Tags:["elevator","elevator.button","elevator.display","elevator.id.map_room"],item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzZjNzZkN2M0ZjI1YTg5NTQxNDRjNDNmOTg5NDE5NGIzNTgwMDk1ZGY4OGE1ODEyODQyNDg0ZTU3YWUxZmVkMCJ9fX0="}]}}},Rotation:[-90,0],transformation:{left_rotation:[0,0,0,1],translation:[0,0.5,0.049],right_rotation:[0,0,0,1],scale:[1,1,0.01]},width:0.5,height:0.5}
summon minecraft:interaction -309.05 112.25 122.50 {Tags:["elevator","elevator.button","elevator.id.map_room"],data:{elevator:{id:"map_room",button:{to:"middle"}}},response:true,width:0.5,height:0.5}
summon minecraft:item_display -309.05 112.25 122.5 {Tags:["elevator","elevator.button","elevator.display","elevator.id.map_room"],item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDVjMDgxYjg5Y2E1MjExOGE4MzJmYTQxNThhNTRhYzEyM2JkMjQ5MDU3ZWVmM2IxMWQ4Y2I5ZmM2ZWQ3MDdlNSJ9fX0="}]}}},Rotation:[-90,0],transformation:{left_rotation:[0,0,0,1],translation:[0,0.5,0.049],right_rotation:[0,0,0,1],scale:[1,1,0.01]},width:0.5,height:0.5}
summon minecraft:interaction -309.05 112.25 123.50 {Tags:["elevator","elevator.button","elevator.id.map_room"],data:{elevator:{id:"map_room",button:{to:"top"}}},response:true,width:0.5,height:0.5}
summon minecraft:item_display -309.05 112.25 123.5 {Tags:["elevator","elevator.button","elevator.display","elevator.id.map_room"],item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDExYzI0MGM4YTU5MzAxOGY2MjYwYThkM2VlMWM0ZDllZjJmNThhOWY1OWJhNmRlZWFmYmM2YWM5YzU2ODA5OCJ9fX0="}]}}},Rotation:[-90,0],transformation:{left_rotation:[0,0,0,1],translation:[0,0.5,0.049],right_rotation:[0,0,0,1],scale:[1,1,0.01]},width:0.5,height:0.5}
summon minecraft:text_display -309.01 111.75 122.5 {Tags:["elevator","elevator.button","elevator.display","elevator.id.map_room"],Rotation:[90,0],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0],scale:[0.5,0.5,1]},text:"Use these buttons to choose which floor to travel to."}
