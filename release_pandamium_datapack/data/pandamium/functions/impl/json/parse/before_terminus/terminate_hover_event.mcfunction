scoreboard players set <parent_hover_event> variable 0
execute unless score <found_original_text> variable matches 1 unless data storage pandamium:json stack[5] unless data storage pandamium:json stack[1].text[0] unless data storage pandamium:json stack[1].extra[0] unless data storage pandamium:json stack[3].text[0] unless data storage pandamium:json stack[3].extra[0] run scoreboard players set <parent_hover_event> variable 1
execute if score <parent_hover_event> variable matches 1 run data modify storage pandamium:json hover_event_last_character set from storage pandamium:json stack[-1].extra[-1]
execute if score <parent_hover_event> variable matches 1 if data storage pandamium:json {hover_event_last_character:'§'} store success score <found_original_text> variable run data remove storage pandamium:json stack[-1].extra[-1]
execute if score <parent_hover_event> variable matches 1 if score <found_original_text> variable matches 1 run data modify storage pandamium:json original_text_characters set from storage pandamium:json stack[-1].extra

data remove storage pandamium:json stack[-1]
scoreboard players set <next_state> variable 1
scoreboard players set <recognised> variable 1
