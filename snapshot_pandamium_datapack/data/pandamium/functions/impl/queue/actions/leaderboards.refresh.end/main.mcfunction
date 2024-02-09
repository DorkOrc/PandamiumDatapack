#{
#	action: "leaderboards.refresh.end",
#	type: STRING
#}

$bossbar remove pandamium:queue/leaderboards.refresh/$(type)
$tellraw @a[scores={send_extra_debug_info=1..}] {"text":"[Pandamium: queue/leaderboards.refresh: Finished refresh for [$(type)]]","color":"gray","italic":true}
