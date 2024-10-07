function pandamium:utils/get/username
data modify storage pandamium:templates macro.username.username set from storage pandamium:temp username
function pandamium:impl/queue/actions/parkour.fall/with_username with storage pandamium:templates macro.username

execute unless score @s parkour.checkpoint matches 300..399 run return 0

execute if score @s parkour.checkpoint matches 300 run particle minecraft:block_crumble{block_state:{Name:"pale_oak_log"}} ~ ~1 ~ 0.3 1 0.3 0 100
execute if score @s parkour.checkpoint matches 300 run playsound minecraft:entity.creaking.activate player @a[distance=..15] ~ ~ ~ 0.5 1
execute if score @s parkour.checkpoint matches 304 run particle minecraft:lava ~ ~ ~ 0 0 0 1 10

function pandamium:utils/database/players/load/self
execute store result storage pandamium.db.players:io selected.entry.data.parkour.course_4.falls int 1 run scoreboard players add @s parkour_4.falls 1
function pandamium:utils/database/players/save
