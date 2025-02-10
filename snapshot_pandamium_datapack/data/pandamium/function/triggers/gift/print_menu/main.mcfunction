tellraw @s [{text:"======== ",color:"aqua"},{text:"Gift Menu",bold:true}," ========\n",{text:"Player List:",bold:true}]

function pandamium:triggers/gift/print_menu/list

tellraw @s [{text:"\nℹ",color:"blue",hover_event:{action:"show_text",value:[{text:"Ways to gift a reward credit to another player:",color:"aqua"},{text:"\n• Click the ",color:"green",extra:[{text:"[🎁]",color:"#FF007F"}," next to that player's name in the list.\n• Run ",{text:"/trigger",color:"gray",extra:[{text:" gift",color:"aqua"}," set",{text:" <player id>",color:"yellow"}]},"."]}]}},{text:" ",color:"green",extra:[{text:"Hover here",color:"aqua"}," to learn",{text:" how to gift a reward credit",color:"aqua"}," to another player!"]}]
tellraw @s {text:"===========================",color:"aqua"}
