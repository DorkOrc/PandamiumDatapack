# arguments: username

$tellraw @s [{text:" ",color:"green"},{text:"[A Random Online Player's Head]",color:"gold",hover_event:{action:"show_item",id:"minecraft:bundle",count:1,components:{"minecraft:custom_name":[{text:"Click to buy ",color:"gold",italic:false},{text:"A Random Online Player's Head",bold:true}],"minecraft:lore":[{text:"Requires at least 5 online players",color:"red",italic:false},{text:"Cost: ",color:"green",italic:false,extra:[{text:"15 Reward Credits",bold:true}]}],"minecraft:bundle_contents":[{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;0,0,0,0],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmFkYzA0OGE3Y2U3OGY3ZGFkNzJhMDdkYTI3ZDg1YzA5MTY4ODFlNTUyMmVlZWQxZTNkYWYyMTdhMzhjMWEifX19"}]}}}]}},click_event:{action:"run_command",command:"trigger rewards_shop set -1009"}},"  |  ",{text:"[Your Head]",color:"gold",hover_event:{action:"show_item",id:"minecraft:bundle",count:1,components:{"minecraft:custom_name":[{text:"Click to buy ",color:"gold",italic:false},{text:"Your Head",bold:true}],"minecraft:lore":[[{text:"Cost: ",color:"green",italic:false},{text:"60 Reward Credits",bold:true}]],"minecraft:bundle_contents":[{id:"minecraft:player_head",count:1,components:{"minecraft:profile":"$(username)"}}]}},click_event:{action:"run_command",command:"trigger rewards_shop set -1010"}}]
