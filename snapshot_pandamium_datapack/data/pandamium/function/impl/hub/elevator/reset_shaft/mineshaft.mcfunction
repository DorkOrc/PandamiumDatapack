execute unless loaded -208 0 192 run return fail

kill @e[x=0,tag=elevator.id.mineshaft]

fill -197 78 202 -195 126 204 air strict
fill -196 78 203 -196 126 203 minecraft:iron_chain[axis=y] strict

fill -197 77 202 -195 77 204 minecraft:waxed_exposed_copper_grate strict
fill -197 75 202 -195 76 204 minecraft:amethyst_block strict
setblock -196 76 203 minecraft:grindstone[face=floor,facing=north] strict

place template pandamium:elevator -197 120 202 none none 1 0 strict

kill @e[x=-196.0,y=77.0,z=203.0,distance=..1,tag=hub.mineshaft_elevator_shaft]
summon minecraft:block_display -196.0 77.0 203.0 {Tags:["hub.mineshaft_elevator_shaft"],block_state:{Name:"minecraft:iron_chain"},width:1,height:1}

# buttons
kill @e[x=-198.0,y=78.0,z=201.0,dx=4,dy=100,dz=4,tag=elevator_button]
kill @e[x=-198.0,y=78.0,z=201.0,dx=4,dy=100,dz=4,tag=custom_block.elevator_button]
kill @e[x=0,tag=elevator.button,tag=elevator.id.mineshaft]
summon minecraft:interaction -195.00 123.25 205.95 {Tags:["elevator","elevator.button","elevator.id.mineshaft"],data:{elevator:{id:"mineshaft",button:{to:"bottom"}}},response:true,width:0.5,height:0.5}
summon minecraft:item_display -195.0 123.25 205.95 {Tags:["elevator","elevator.button","elevator.display","elevator.id.mineshaft"],data:{elevator:{id:"mineshaft",display:true}},item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2U4MjkxMjNhMDdjOGRmMmQwNzYxZjgwZmVhOGYxNWVkZjAyNjJlNmIxZDZlY2U2M2IxM2E5N2YwNmI3NmE0MCJ9fX0="}]}}},transformation:{left_rotation:[0,0,0,1],translation:[0,0.5,0.049],right_rotation:[0,0,0,1],scale:[1,1,0.01]},width:0.5,height:0.5}
summon minecraft:interaction -196.00 123.25 205.95 {Tags:["elevator","elevator.button","elevator.id.mineshaft"],data:{elevator:{id:"mineshaft",button:{to:"top"}}},response:true,width:0.5,height:0.5}
summon minecraft:item_display -196.0 123.25 205.95 {Tags:["elevator","elevator.button","elevator.display","elevator.id.mineshaft"],data:{elevator:{id:"mineshaft",display:true}},item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmJkNDY3YTQ5MTllNDU3Zjc0Y2NjZjI3NjdiNmUxNTk4YmI2NTBiNmQ4YzBjZGU2M2Q1MDQ3MWYzNzEwZDAwMiJ9fX0="}]}}},transformation:{left_rotation:[0,0,0,1],translation:[0,0.5,0.049],right_rotation:[0,0,0,1],scale:[1,1,0.01]},width:0.5,height:0.5}
summon minecraft:text_display -195.5 122.75 205.99 {Tags:["elevator","elevator.button","elevator.display","elevator.id.mineshaft"],Rotation:[180,0],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0],scale:[0.5,0.5,1]},text:"Use these buttons to choose which floor to travel to."}

summon minecraft:interaction -196.00 80.25 202.05 {Tags:["elevator","elevator.button","elevator.id.mineshaft"],data:{elevator:{id:"mineshaft",button:{to:"bottom"}}},response:true,width:0.5,height:0.5}
summon minecraft:item_display -196.0 80.25 202.05 {Tags:["elevator","elevator.button","elevator.display","elevator.id.mineshaft"],data:{elevator:{id:"mineshaft",display:true}},item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2U4MjkxMjNhMDdjOGRmMmQwNzYxZjgwZmVhOGYxNWVkZjAyNjJlNmIxZDZlY2U2M2IxM2E5N2YwNmI3NmE0MCJ9fX0="}]}}},Rotation:[180,0],transformation:{left_rotation:[0,0,0,1],translation:[0,0.5,0.049],right_rotation:[0,0,0,1],scale:[1,1,0.01]},width:0.5,height:0.5}
summon minecraft:interaction -195.00 80.25 202.05 {Tags:["elevator","elevator.button","elevator.id.mineshaft"],data:{elevator:{id:"mineshaft",button:{to:"top"}}},response:true,width:0.5,height:0.5}
summon minecraft:item_display -195.0 80.25 202.05 {Tags:["elevator","elevator.button","elevator.display","elevator.id.mineshaft"],data:{elevator:{id:"mineshaft",display:true}},item:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmJkNDY3YTQ5MTllNDU3Zjc0Y2NjZjI3NjdiNmUxNTk4YmI2NTBiNmQ4YzBjZGU2M2Q1MDQ3MWYzNzEwZDAwMiJ9fX0="}]}}},Rotation:[180,0],transformation:{left_rotation:[0,0,0,1],translation:[0,0.5,0.049],right_rotation:[0,0,0,1],scale:[1,1,0.01]},width:0.5,height:0.5}
summon minecraft:text_display -195.5 79.75 202.01 {Tags:["elevator","elevator.button","elevator.display","elevator.id.mineshaft"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0],scale:[0.5,0.5,1]},text:"Use these buttons to choose which floor to travel to."}
