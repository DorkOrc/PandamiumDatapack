execute store result score <total> variable run kill @e[type=item,predicate=!pandamium:contents_slot/item_clear/valuable,nbt=!{Item:{components:{}}}]
tellraw @a[scores={send_extra_debug_info=1..}] [{"text":"[Pandamium: Cleared ","color":"gray","italic":true},{"score":{"name":"<total>","objective":"variable"}}," item entities]"]
title @a actionbar {"text":"Non-valuable dropped items were cleared","color":"aqua","bold":true}
