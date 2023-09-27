# arguments: type
$data modify storage pandamium:temp type set value "$(type)"

$bossbar add pandamium:progress.leaderboards.$(type) {"text":"[Leaderboards] $(type): waiting"}
$bossbar set pandamium:progress.leaderboards.$(type) value 0
$bossbar set pandamium:progress.leaderboards.$(type) players @a[scores={send_extra_debug_info=1}]
$execute store result score <length> variable store result bossbar pandamium:progress.leaderboards.$(type) max if data storage pandamium.db:players entries[]
execute store result storage pandamium:templates macro.index.index int 1 run scoreboard players set <index> variable 0
function pandamium:impl/leaderboards/refresh/queue_loop with storage pandamium:templates macro.index
function pandamium:impl/leaderboards/refresh/queue_end with storage pandamium:templates macro.index
scoreboard players set <ticks_since_monthly_leaderboard_holograms_updated> global 0
