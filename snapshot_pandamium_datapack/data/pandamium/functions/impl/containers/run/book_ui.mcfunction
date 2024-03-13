execute store success score <has_filtered_version> variable if data storage pandamium:containers items[0].filtered

execute if score <has_filtered_version> variable matches 0 if score <interpret> variable matches 0 run tellraw @s ["",[{"text":"pages.","color":"aqua","underlined":true},{"score":{"name":"<page>","objective":"variable"}}],": ",{"text":"[text]","color":"dark_gray","hoverEvent":{"action":"show_text","value":{"nbt":"items[0].text","storage":"pandamium:containers"}}}]
execute if score <has_filtered_version> variable matches 0 if score <interpret> variable matches 1 run tellraw @s ["",[{"text":"pages.","color":"aqua","underlined":true},{"score":{"name":"<page>","objective":"variable"}}],": ",{"text":"[text]","color":"dark_gray","hoverEvent":{"action":"show_text","value":{"nbt":"items[0].text","storage":"pandamium:containers","interpret":true}}}]

execute if score <has_filtered_version> variable matches 1 if score <interpret> variable matches 0 run tellraw @s ["",[{"text":"pages.","color":"aqua","underlined":true},{"score":{"name":"<page>","objective":"variable"}}],": ",{"text":"[text]","color":"dark_gray","hoverEvent":{"action":"show_text","value":{"nbt":"items[0]","storage":"pandamium:containers"}}}," ",{"text":"[filtered]","color":"dark_gray","hoverEvent":{"action":"show_text","value":{"nbt":"items[0]","storage":"pandamium:containers"}}}]
execute if score <has_filtered_version> variable matches 1 if score <interpret> variable matches 1 run tellraw @s ["",[{"text":"pages.","color":"aqua","underlined":true},{"score":{"name":"<page>","objective":"variable"}}],": ",{"text":"[text]","color":"dark_gray","hoverEvent":{"action":"show_text","value":{"nbt":"items[0]","storage":"pandamium:containers","interpret":true}}}," ",{"text":"[filtered]","color":"dark_gray","hoverEvent":{"action":"show_text","value":{"nbt":"items[0]","storage":"pandamium:containers","interpret":true}}}]

scoreboard players add <page> variable 1
data remove storage pandamium:containers items[0]
execute if data storage pandamium:containers items[0] run function pandamium:impl/containers/run/book_ui
