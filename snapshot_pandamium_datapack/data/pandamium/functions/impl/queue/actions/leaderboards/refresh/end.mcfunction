#{
#	action: "leaderboards/refresh/end",
#   type: STRING
#}

bossbar set pandamium:leaderboards_refresh_progress players
$tellraw @a[scores={send_extra_debug_info=1}] {"text":"[Leaderboards: refresh for [$(type)] complete]","color":"gray","italic":true}
