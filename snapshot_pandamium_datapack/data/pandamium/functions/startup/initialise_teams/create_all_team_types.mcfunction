# normal
$team add $(name)
$team modify $(name) color $(color)
$team modify $(name) prefix ["",$(display_name)," | "]
$team modify $(name) seeFriendlyInvisibles false

# idle
$team add $(name)_idle
$team modify $(name)_idle color $(color)
$team modify $(name)_idle prefix ["",$(display_name)," | "]
$team modify $(name)_idle seeFriendlyInvisibles false
$team modify $(name)_idle suffix {"text":" [Idle]","color":"gray"}

# afk
$team add $(name)_afk
$team modify $(name)_afk color $(color)
$team modify $(name)_afk prefix ["",$(display_name)," | "]
$team modify $(name)_afk seeFriendlyInvisibles false
$team modify $(name)_afk suffix {"text":" [AFK]","color":"gray"}

# hidden
$team add $(name)_hidden
$team modify $(name)_hidden color $(color)
$team modify $(name)_hidden prefix ["",$(display_name)," | "]
$team modify $(name)_hidden seeFriendlyInvisibles false
$team modify $(name)_hidden collisionRule never
