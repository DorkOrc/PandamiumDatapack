#{
#	action: "leaderboards.refresh.update_user",
#	index: INT,
#	username: STRING,
#	type: STRING
#}

$bossbar set pandamium:queue/leaderboards.refresh/$(type) value $(index)
$bossbar set pandamium:queue/leaderboards.refresh/$(type) players @a[scores={send_extra_debug_info=1..}]
$bossbar set pandamium:queue/leaderboards.refresh/$(type) name {"text":"[leaderboards.refresh] $(type): updating $(username)"}

$function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"$(type)"}
