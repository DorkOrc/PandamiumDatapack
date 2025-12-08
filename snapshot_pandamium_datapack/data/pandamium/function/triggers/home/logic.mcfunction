# restrictions
execute if score @s jailed matches 1.. run return run tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" You cannot use this trigger in jail!",color:"red"}]
execute if score @s parkour.checkpoint matches 0.. run return run tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" You cannot use this trigger currently!",color:"red"}]

scoreboard players operation <home> variable = @s home
execute unless score <home> variable matches 1..25 run return run tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" That is not a valid option! ",color:"red"},{text:"[≡]",color:"blue",bold:true,hover_event:{action:"show_text",value:{text:"Click to see your homes",color:"blue"}},click_event:{action:"run_command",command:"trigger homes"}}]

# check perms
execute unless predicate pandamium:can_access_home run return run tellraw @s [{text:"",color:"red"},{text:"[Homes]",color:"dark_red"}," You do not have access to ",{text:"Home ",bold:true,extra:[{score:{name:"<home>",objective:"variable"}}]},"! You can become a Patreon supporter or vote to increase your rank to get access to that home! Check our ",{text:"[Discord]",color:"aqua",hover_event:{action:"show_text",value:"Click to open!"},click_event:{action:"open_url",url:"http://discord.pandamium.eu"}}," for more information on how to support us!"]

# run
data modify storage pandamium:local functions."pandamium:triggers/home/*" set value {}
execute store result storage pandamium:local functions."pandamium:triggers/home/*".home int 1 run scoreboard players get <home> variable
function pandamium:triggers/home/try_teleport with storage pandamium:local functions."pandamium:triggers/home/*"
