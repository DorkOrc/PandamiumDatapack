#{
#	action: "leaderboards/refresh/start",
#   type: STRING
#}

$tellraw @a[scores={send_extra_debug_info=1..}] {"text":"[Leaderboards: Started refresh for [$(type)]]","color":"gray","italic":true}
$function pandamium:impl/leaderboards/refresh/main {type:"$(type)"}
