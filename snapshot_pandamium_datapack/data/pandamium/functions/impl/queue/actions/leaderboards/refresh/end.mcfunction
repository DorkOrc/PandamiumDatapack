#{
#	action: "leaderboards/refresh/end",
#   type: STRING
#}

$bossbar remove pandamium:progress.leaderboards.$(type)
$tellraw @a[scores={send_extra_debug_info=1}] {"text":"[Leaderboards: Finished refresh for [$(type)]]","color":"gray","italic":true}
