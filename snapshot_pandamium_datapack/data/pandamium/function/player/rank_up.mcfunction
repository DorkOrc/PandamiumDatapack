scoreboard players operation <previous_gameplay_rank> variable = @s gameplay_rank

function pandamium:player/ranks/update_perms
function pandamium:player/teams/update_base
# (score @s gameplay_rank) -> 0..5

execute if score @s gameplay_rank = <previous_gameplay_rank> variable run return 0

execute if score @s gameplay_rank matches 1..5 run playsound minecraft:ui.toast.challenge_complete master @s

execute if score @s gameplay_rank matches 1 run function pandamium:utils/log {args:{message:['event="player_ranked_up",data={"username":"',{storage:"pandamium:temp",nbt:"username"},'","to_rank":"player"}']}}
execute if score @s gameplay_rank matches 1 run tellraw @a ["",{selector:"@s"}," has ranked up to ",{text:"[Player]",color:"green",hover_event:{action:"show_text",value:[{text:"Play for 5 hours and vote 5 times",color:"green"}]}}]
execute if score @s gameplay_rank matches 1 run tellraw @s [{text:"[Info]",color:"blue"},{text:" Congratulations! ",color:"aqua"},{text:"You have ranked up to ",color:"green",extra:[{text:"Player",bold:true,color:"green"},"! You now have access to:",{text:"\n • Player prefix\n • Home 3",color:"aqua"}]}]

execute if score @s gameplay_rank matches 2 run function pandamium:utils/log {args:{message:['event="player_ranked_up",data={"username":"',{storage:"pandamium:temp",nbt:"username"},'","to_rank":"member"}']}}
execute if score @s gameplay_rank matches 2 run tellraw @a ["",{selector:"@s"}," has ranked up to ",{text:"[Member]",color:"dark_green",hover_event:{action:"show_text",value:[{text:"Play for 25 hours and vote 25 times",color:"dark_green"}]}}]
execute if score @s gameplay_rank matches 2 run tellraw @s [{text:"[Info]",color:"blue"},{text:" Congratulations! ",color:"aqua"},{text:"You have ranked up to ",color:"green",extra:[{text:"Member",bold:true,color:"dark_green"},"! You now have access to:",{text:"\n • Member prefix\n • Homes 4 and 5",color:"aqua"}]}]

execute if score @s gameplay_rank matches 3 run function pandamium:utils/log {args:{message:['event="player_ranked_up",data={"username":"',{storage:"pandamium:temp",nbt:"username"},'","to_rank":"elder"}']}}
execute if score @s gameplay_rank matches 3 run tellraw @a ["",{selector:"@s"}," has ranked up to ",{text:"[Elder]",color:"aqua",hover_event:{action:"show_text",value:[{text:"Play for 125 hours and vote 125 times",color:"aqua"}]}}]
execute if score @s gameplay_rank matches 3 run tellraw @s [{text:"[Info]",color:"blue"},{text:" Congratulations! ",color:"aqua"},{text:"You have ranked up to ",color:"green",extra:[{text:"Elder",bold:true,color:"aqua"},"! You now have access to:",{text:"\n • Elder prefix\n • Homes 6 to 10\n • You can toggle the Chat Reminders option",color:"aqua"}]}]

execute if score @s gameplay_rank matches 4 run function pandamium:utils/log {args:{message:['event="player_ranked_up",data={"username":"',{storage:"pandamium:temp",nbt:"username"},'","to_rank":"veteran"}']}}
execute if score @s gameplay_rank matches 4 run tellraw @a ["",{selector:"@s"}," has ranked up to ",{text:"[Veteran]",color:"dark_aqua",hover_event:{action:"show_text",value:[{text:"Play for 500 hours and vote 500 times",color:"dark_aqua"}]}}]
execute if score @s gameplay_rank matches 4 run tellraw @s [{text:"[Info]",color:"blue"},{text:" Congratulations! ",color:"aqua"},{text:"You have ranked up to ",color:"green",extra:[{text:"Veteran",bold:true,color:"dark_aqua"},"! You now have access to:",{text:"\n • Veteran prefix\n • Home 11 to 15\n • You can make a request to have your own personal banner exhibited at spawn! Open a ticket through our ",color:"aqua",extra:[{text:"Discord",bold:true,color:"#5865F2",underlined:true,hover_event:{action:"show_text",value:[{text:"Click to join the ",color:"#5865F2"},{text:"Discord Server",bold:true}]},click_event:{action:"open_url",url:"http://discord.pandamium.eu/"}}," server to do so."]}]}]

execute if score @s gameplay_rank matches 5 run function pandamium:utils/log {args:{message:['event="player_ranked_up",data={"username":"',{storage:"pandamium:temp",nbt:"username"},'","to_rank":"elite"}']}}
execute if score @s gameplay_rank matches 5 run tellraw @a ["",{selector:"@s"}," has ranked up to ",{text:"[Elite]",color:"blue",hover_event:{action:"show_text",value:[{text:"Play for 2500 hours and vote 2500 times",color:"blue"}]}}]
execute if score @s gameplay_rank matches 5 run tellraw @s [{text:"[Info]",color:"blue"},{text:" Congratulations! ",color:"aqua"},{text:"You have ranked up to ",color:"green",extra:[{text:"Elite",bold:true,color:"blue"},"! You now have access to:",{text:"\n • Elite prefix\n • Homes 16 to 20",color:"aqua"}]}]
