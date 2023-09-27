#{
#	action: "leaderboards/refresh/update_user",
#	index: INT,
#	username: STRING,
#   type: STRING
#}

$bossbar set pandamium:leaderboards_refresh_progress value $(index)
bossbar set pandamium:leaderboards_refresh_progress players @a[scores={send_extra_debug_info=1}]
$bossbar set pandamium:leaderboards_refresh_progress name {"text":"[Leaderboards] Updating $(username) place"}

$function pandamium:impl/leaderboards/update_user_place/main {username:"$(username)",type:"$(type)"}
