scoreboard players set <style> variable -1000
scoreboard players operation <style> variable -= @s item_font

data modify storage pandamium:temp text set from storage pandamium:temp item.tag.display.Name
function pandamium:impl/font/apply_style/main

execute store success score <text_changed> variable run data modify storage pandamium:temp item.tag.display.Name set from storage pandamium:temp text
