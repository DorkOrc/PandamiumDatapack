# arguments: bossbar_id, value, max, name, status, bossbar_color

$execute if score <queue.pending> variable matches 1 run bossbar set $(bossbar_id) name ["[",$(name),"] ",{"text":"Pending...","bold":true}]
$execute if score <queue.pending> variable matches 1 run return run bossbar set $(bossbar_id) color blue

$execute if score <queue.wait> variable matches 1.. run bossbar set $(bossbar_id) name ["[",$(name),"] ",{"text":"Waiting...","bold":true}]
$execute if score <queue.wait> variable matches 1.. run bossbar set $(bossbar_id) color white
$execute if score <queue.wait> variable matches 1.. run return run execute store result bossbar $(bossbar_id) value run scoreboard players get <queue.wait> variable

$bossbar set $(bossbar_id) value $(value)
$bossbar set $(bossbar_id) max $(max)
$bossbar set $(bossbar_id) color $(bossbar_color)
$execute if data storage pandamium:queue selected.entry.meta{status:'""'} run return run bossbar set $(bossbar_id) name ["[",$(name),"] ",{"text":"$(value)/$(max)","bold":true}]
$bossbar set $(bossbar_id) name ["[",$(name),"] ",$(status)]
