# arguments: x, y, z, dimension

$tellraw @a[scores={send_extra_debug_info=2..}] {"text":"[Server: Summoned Christmas Mob at $(x) $(y) $(z) in $(dimension)]","color":"gray","italic":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport there"}]},"clickEvent":{"action":"suggest_command","value":"/execute in $(dimension) run tp $(x) $(y) $(z)"}}
