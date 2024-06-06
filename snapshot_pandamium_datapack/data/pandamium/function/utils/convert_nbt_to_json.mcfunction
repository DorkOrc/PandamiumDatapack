# arguments: nbt

$execute in pandamium:staff_world run loot replace block 5 0 0 contents loot {pools:[{rolls:1,entries:[{type:"item",name:"stone",functions:[{function:"set_name",name:{text:"",hoverEvent:{action:"show_item",contents:{id:"stone",components:{custom_data:{value:$(nbt)}}}}}}]}]}]}
execute in pandamium:staff_world run data modify storage pandamium:temp json set string block 5 0 0 item.components."minecraft:custom_name" 95 -48
