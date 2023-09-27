# arguments: type
$data modify storage pandamium:temp type set value "$(type)"

bossbar add pandamium:leaderboards_refresh_progress {"text":"[leaderboards]"}
bossbar set pandamium:leaderboards_refresh_progress value 0
bossbar set pandamium:leaderboards_refresh_progress players @a[scores={send_extra_debug_info=1}]
execute store result score <length> variable store result bossbar pandamium:leaderboards_refresh_progress max if data storage pandamium.db:players entries[]
execute store result storage pandamium:templates macro.index.index int 1 run scoreboard players set <index> variable 0
function pandamium:impl/leaderboards/refresh/queue_loop with storage pandamium:templates macro.index
function pandamium:impl/leaderboards/refresh/queue_end with storage pandamium:templates macro.index
