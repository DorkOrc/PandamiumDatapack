# arguments: bossbar_id, bossbar_color, (...)

$execute if score <queue.pending> variable matches 1 run bossbar set $(bossbar_id) color blue
$execute if score <queue.pending> variable matches 1 run return run bossbar set $(bossbar_id) name ["[",{storage:"pandamium:queue",nbt:"selected.entry.meta.name",interpret:true},"] ",{text:"Pending...",bold:true}]

$execute if score <queue.wait> variable matches 1.. run bossbar set $(bossbar_id) color white
$execute if score <queue.wait> variable matches 1.. store result bossbar $(bossbar_id) max run scoreboard players get <queue.waiting_for> variable
$execute if score <queue.wait> variable matches 1.. store result bossbar $(bossbar_id) value run scoreboard players get <queue.wait> variable
$execute if score <queue.wait> variable matches 1.. run return run bossbar set $(bossbar_id) name ["[",{storage:"pandamium:queue",nbt:"selected.entry.meta.name",interpret:true},"] ",{text:"Waiting...",bold:true}]

$bossbar set $(bossbar_id) color $(bossbar_color)
$execute store result bossbar $(bossbar_id) value run scoreboard players get <queue.value> variable
$execute store result bossbar $(bossbar_id) max run scoreboard players get <queue.max> variable
$execute if data storage pandamium:queue selected.entry.meta.status unless data storage pandamium:queue selected.entry.meta{status:""} run return run bossbar set $(bossbar_id) name ["[",{storage:"pandamium:queue",nbt:"selected.entry.meta.name",interpret:true},"] ",{storage:"pandamium:queue",nbt:"selected.entry.meta.status",interpret:true}]
$bossbar set $(bossbar_id) name ["[",{storage:"pandamium:queue",nbt:"selected.entry.meta.name",interpret:true},"] ",[{bold:true,score:{name:"<queue.value>",objective:"variable"}},"/",{score:{name:"<queue.max>",objective:"variable"}}]]
