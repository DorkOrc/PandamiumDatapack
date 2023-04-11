tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Item Font Menu","bold":true}," ========"]
tellraw @s [{"text":"","color":"aqua"},{"text":"Bold","bold":true},": ",{"text":"[False]","color":"red","clickEvent":{"action":"run_command","value":"/trigger item_font set -21"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to disable ","color":"red"},{"text":"Bold","bold":true}]}}," ",{"text":"[True]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_font set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to enable ","color":"green"},{"text":"Bold","bold":true}]}}]
tellraw @s [{"text":"","color":"aqua"},{"text":"Italic","italic":true},": ",{"text":"[False]","color":"red","clickEvent":{"action":"run_command","value":"/trigger item_font set -22"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to disable ","color":"red"},{"text":"Italic","bold":true}]}}," ",{"text":"[True]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_font set -2"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to enable ","color":"green"},{"text":"Italic","bold":true}]}}]
tellraw @s [{"text":"","color":"aqua"},{"text":"Underlined","underlined":true},": ",{"text":"[False]","color":"red","clickEvent":{"action":"run_command","value":"/trigger item_font set -23"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to disable ","color":"red"},{"text":"Underlined","bold":true}]}}," ",{"text":"[True]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_font set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to enable ","color":"green"},{"text":"Underlined","bold":true}]}}]
tellraw @s [{"text":"","color":"aqua"},{"text":"Strikethrough","strikethrough":true},": ",{"text":"[False]","color":"red","clickEvent":{"action":"run_command","value":"/trigger item_font set -24"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to disable ","color":"red"},{"text":"Strikethrough","bold":true}]}}," ",{"text":"[True]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_font set -4"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to enable ","color":"green"},{"text":"Strikethrough","bold":true}]}}]
tellraw @s [{"text":"","color":"aqua"},{"text":"Font"},": ",{"text":"[Default]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger item_font set -41"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick font ","color":"blue"},{"text":"Default","bold":true}]}}," ",[{"text":"[","color":"blue","clickEvent":{"action":"run_command","value":"/trigger item_font set -42"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick font ","color":"blue"},{"text":"Uniform","bold":true}]}},{"text":"Uniform","font":"uniform","bold":true},"]"]," ",[{"text":"[","color":"blue","clickEvent":{"action":"run_command","value":"/trigger item_font set -43"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick font ","color":"blue"},{"text":"Standard Galactic Alphabet","bold":true}]}},{"text":"bntz","font":"alt"},"]"]," ",[{"text":"[","color":"blue","clickEvent":{"action":"run_command","value":"/trigger item_font set -44"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick font ","color":"blue"},{"text":"Illager Runes","bold":true}]}},{"text":"dmqe","font":"illageralt"},"]"]]
tellraw @s [{"text":"","color":"aqua"},{"text":"Lore"},": ",{"text":"[Line 1]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger item_font set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to swap the name with ","color":"dark_purple"},{"text":"Lore Line 1","bold":true}]}}," ",{"text":"[Line 2]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger item_font set -102"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to swap the name with ","color":"dark_purple"},{"text":"Lore Line 2","bold":true}]}}," ",{"text":"[Line 3]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger item_font set -103"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to swap the name with ","color":"dark_purple"},{"text":"Lore Line 3","bold":true}]}}," ",{"text":"[Line 4]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger item_font set -104"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to swap the name with ","color":"dark_purple"},{"text":"Lore Line 4","bold":true}]}}]
tellraw @s[scores={staff_perms=1..}] [{"text":"","color":"aqua"},{"text":"Custom Fonts"}," ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","contents":{"nbt":"font.menu.custom_fonts.info","storage":"pandamium:dictionary","interpret":true}}},": ",{"text":"[Reset]","color":"white","clickEvent":{"action":"run_command","value":"/trigger item_font set -91"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick custom font "},{"text":"Reset","bold":true}]}}," ",{"nbt":"font.menu.custom_fonts.rainbow.button","storage":"pandamium:dictionary","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger item_font set -92"},"hoverEvent":{"action":"show_text","value":{"nbt":"font.menu.custom_fonts.rainbow.hover_event","storage":"pandamium:dictionary","interpret":true}}}," ",{"nbt":"font.menu.custom_gradients_page.button","storage":"pandamium:dictionary","interpret":true,"hoverEvent":{"action":"show_text","contents":{"nbt":"font.menu.custom_gradients_page.hover_event","storage":"pandamium:dictionary","interpret":true}},"clickEvent":{"action":"run_command","value":"/trigger item_font set 2"}}]
tellraw @s ["",{"text":"█","color":"white","clickEvent":{"action":"run_command","value":"/trigger item_font set -51"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"white"},{"text":"White","bold":true}]}},{"text":"█","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger item_font set -52"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"dark_gray"},{"text":"Dark Grey","bold":true}]}},{"text":"█","color":"#ff0000","clickEvent":{"action":"run_command","value":"/trigger item_font set -53"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#ff0000"},{"text":"Red","bold":true}]}},{"text":"█","color":"#ff7f00","clickEvent":{"action":"run_command","value":"/trigger item_font set -54"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#ff7f00"},{"text":"Orange","bold":true}]}},{"text":"█","color":"#ffff00","clickEvent":{"action":"run_command","value":"/trigger item_font set -55"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#ffff00"},{"text":"Yellow","bold":true}]}},{"text":"█","color":"#00ff00","clickEvent":{"action":"run_command","value":"/trigger item_font set -56"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#00ff00"},{"text":"Green","bold":true}]}},{"text":"█","color":"#00ffff","clickEvent":{"action":"run_command","value":"/trigger item_font set -57"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#00ffff"},{"text":"Cyan","bold":true}]}},{"text":"█","color":"#007fff","clickEvent":{"action":"run_command","value":"/trigger item_font set -58"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#007fff"},{"text":"Azure","bold":true}]}},{"text":"█","color":"#0000ff","clickEvent":{"action":"run_command","value":"/trigger item_font set -59"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#0000ff"},{"text":"Blue","bold":true}]}},{"text":"█","color":"#7f00ff","clickEvent":{"action":"run_command","value":"/trigger item_font set -60"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#7f00ff"},{"text":"Violet","bold":true}]}},{"text":"█","color":"#ff00ff","clickEvent":{"action":"run_command","value":"/trigger item_font set -61"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#ff00ff"},{"text":"Magenta","bold":true}]}},{"text":"█","color":"#ff007f","clickEvent":{"action":"run_command","value":"/trigger item_font set -62"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#ff007f"},{"text":"Rose","bold":true}]}}]
tellraw @s ["",{"text":"█","color":"gray","clickEvent":{"action":"run_command","value":"/trigger item_font set -63"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"gray"},{"text":"Light Grey","bold":true}]}},{"text":"█","color":"black","clickEvent":{"action":"run_command","value":"/trigger item_font set -64"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#1f1f1f"},{"text":"Black","bold":true}]}},{"text":"█","color":"#7f0000","clickEvent":{"action":"run_command","value":"/trigger item_font set -65"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#7f0000"},{"text":"Dark Red","bold":true}]}},{"text":"█","color":"#7f3f00","clickEvent":{"action":"run_command","value":"/trigger item_font set -66"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#7f3f00"},{"text":"Brass","bold":true}]}},{"text":"█","color":"#7f7f00","clickEvent":{"action":"run_command","value":"/trigger item_font set -67"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#7f7f00"},{"text":"Olive","bold":true}]}},{"text":"█","color":"#007f00","clickEvent":{"action":"run_command","value":"/trigger item_font set -68"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#007f00"},{"text":"Dark Green","bold":true}]}},{"text":"█","color":"#007f7f","clickEvent":{"action":"run_command","value":"/trigger item_font set -69"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#007f7f"},{"text":"Dark Cyan","bold":true}]}},{"text":"█","color":"#003f7f","clickEvent":{"action":"run_command","value":"/trigger item_font set -70"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#003f7f"},{"text":"Dark Azure","bold":true}]}},{"text":"█","color":"#00007f","clickEvent":{"action":"run_command","value":"/trigger item_font set -71"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#00007f"},{"text":"Dark Blue","bold":true}]}},{"text":"█","color":"#3f007f","clickEvent":{"action":"run_command","value":"/trigger item_font set -72"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#3f007f"},{"text":"Dark Violet","bold":true}]}},{"text":"█","color":"#7f007f","clickEvent":{"action":"run_command","value":"/trigger item_font set -73"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#7f007f"},{"text":"Dark Magenta","bold":true}]}},{"text":"█","color":"#7f003f","clickEvent":{"action":"run_command","value":"/trigger item_font set -74"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to pick colour ","color":"#7f003f"},{"text":"Dark Rose","bold":true}]}}]
tellraw @s {"text":"================================","color":"aqua"}
