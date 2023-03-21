data modify storage pandamium:json stack[-2].extra append from storage pandamium:json stack[-1].text[]
data modify storage pandamium:json stack[-2].extra append from storage pandamium:json stack[-1].extra[]
data remove storage pandamium:json stack[-1]
scoreboard players set <next_state> variable 1
scoreboard players set <recognised> variable 1
