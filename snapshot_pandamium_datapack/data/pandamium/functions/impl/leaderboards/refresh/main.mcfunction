# arguments: type
$data modify storage pandamium:temp type set value "$(type)"

$data remove storage pandamium:leaderboards leader_boards.$(type).entries[]
$data remove storage pandamium:leaderboards leader_boards.$(type).format[]
$bossbar add pandamium:queue/leaderboards.refresh/$(type) {"text":"[leaderboards.refresh] $(type): waiting"}
$bossbar set pandamium:queue/leaderboards.refresh/$(type) value 0
$bossbar set pandamium:queue/leaderboards.refresh/$(type) players @a[scores={send_extra_debug_info=1..}]
$execute store result score <length> variable store result bossbar pandamium:queue/leaderboards.refresh/$(type) max if data storage pandamium.db:players entries[]
execute store result storage pandamium:templates macro.index.index int 1 run scoreboard players set <index> variable 0
function pandamium:impl/leaderboards/refresh/queue_loop with storage pandamium:templates macro.index
function pandamium:impl/leaderboards/refresh/queue_end with storage pandamium:templates macro.index
scoreboard players set <ticks_since_monthly_leaderboard_holograms_updated> global 0
