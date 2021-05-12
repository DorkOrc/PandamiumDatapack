execute unless score @s gameplay_perms matches 6.. run function pandamium:misc/donator_only_message

#display menu
execute if score @s gameplay_perms matches 6.. if score @s item_font matches 1.. run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Item Font Menu","bold":true}," ========"]
execute if score @s gameplay_perms matches 6.. if score @s item_font matches 1.. run tellraw @s [{"text":"","color":"aqua"},{"text":"Bold","bold":true},": ",{"text":"[False]","color":"red","clickEvent":{"action":"run_command","value":"/trigger item_font set -1"},"hoverEvent":{"action":"show_text","value":{"text":"Disable Bold","color":"red"}}}," ",{"text":"[True]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_font set -2"},"hoverEvent":{"action":"show_text","value":{"text":"Enable Bold","color":"green"}}}]
execute if score @s gameplay_perms matches 6.. if score @s item_font matches 1.. run tellraw @s [{"text":"","color":"aqua"},{"text":"Italic","italic":true},": ",{"text":"[False]","color":"red","clickEvent":{"action":"run_command","value":"/trigger item_font set -3"},"hoverEvent":{"action":"show_text","value":{"text":"Disable Italic","color":"red"}}}," ",{"text":"[True]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_font set -4"},"hoverEvent":{"action":"show_text","value":{"text":"Enable Italic","color":"green"}}}]
execute if score @s gameplay_perms matches 6.. if score @s item_font matches 1.. run tellraw @s [{"text":"","color":"aqua"},{"text":"Underlined","underlined":true},": ",{"text":"[False]","color":"red","clickEvent":{"action":"run_command","value":"/trigger item_font set -5"},"hoverEvent":{"action":"show_text","value":{"text":"Disable Underlined","color":"red"}}}," ",{"text":"[True]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_font set -6"},"hoverEvent":{"action":"show_text","value":{"text":"Enable Underlined","color":"green"}}}]
execute if score @s gameplay_perms matches 6.. if score @s item_font matches 1.. run tellraw @s [{"text":"","color":"aqua"},{"text":"Strikethrough","strikethrough":true},": ",{"text":"[False]","color":"red","clickEvent":{"action":"run_command","value":"/trigger item_font set -7"},"hoverEvent":{"action":"show_text","value":{"text":"Disable Strikethrough","color":"red"}}}," ",{"text":"[True]","color":"green","clickEvent":{"action":"run_command","value":"/trigger item_font set -8"},"hoverEvent":{"action":"show_text","value":{"text":"Enable Strikethrough","color":"green"}}}]
execute if score @s gameplay_perms matches 6.. if score @s item_font matches 1.. run tellraw @s ["",{"text":"⬛","color":"#ffffff","clickEvent":{"action":"run_command","value":"/trigger item_font set -9"},"hoverEvent":{"action":"show_text","value":{"text":"White","color":"#ffffff"}}},{"text":"⬛","color":"#555555","clickEvent":{"action":"run_command","value":"/trigger item_font set -10"},"hoverEvent":{"action":"show_text","value":{"text":"Dark Grey","color":"#555555"}}},{"text":"⬛","color":"#ff0000","clickEvent":{"action":"run_command","value":"/trigger item_font set -11"},"hoverEvent":{"action":"show_text","value":{"text":"Red","color":"#ff0000"}}},{"text":"⬛","color":"#ff7f00","clickEvent":{"action":"run_command","value":"/trigger item_font set -12"},"hoverEvent":{"action":"show_text","value":{"text":"Orange","color":"#ff7f00"}}},{"text":"⬛","color":"#ffff00","clickEvent":{"action":"run_command","value":"/trigger item_font set -13"},"hoverEvent":{"action":"show_text","value":{"text":"Yellow","color":"#ffff00"}}},{"text":"⬛","color":"#00ff00","clickEvent":{"action":"run_command","value":"/trigger item_font set -14"},"hoverEvent":{"action":"show_text","value":{"text":"Green","color":"#00ff00"}}},{"text":"⬛","color":"#00ffff","clickEvent":{"action":"run_command","value":"/trigger item_font set -15"},"hoverEvent":{"action":"show_text","value":{"text":"Cyan","color":"#00ffff"}}},{"text":"⬛","color":"#007fff","clickEvent":{"action":"run_command","value":"/trigger item_font set -16"},"hoverEvent":{"action":"show_text","value":{"text":"Azure","color":"#007fff"}}},{"text":"⬛","color":"#0000ff","clickEvent":{"action":"run_command","value":"/trigger item_font set -17"},"hoverEvent":{"action":"show_text","value":{"text":"Blue","color":"#0000ff"}}},{"text":"⬛","color":"#7f00ff","clickEvent":{"action":"run_command","value":"/trigger item_font set -18"},"hoverEvent":{"action":"show_text","value":{"text":"Indigo","color":"#7f00ff"}}},{"text":"⬛","color":"#ff00ff","clickEvent":{"action":"run_command","value":"/trigger item_font set -19"},"hoverEvent":{"action":"show_text","value":{"text":"Magenta","color":"#ff00ff"}}},{"text":"⬛","color":"#ff007f","clickEvent":{"action":"run_command","value":"/trigger item_font set -20"},"hoverEvent":{"action":"show_text","value":{"text":"Rose","color":"#ff007f"}}}]
execute if score @s gameplay_perms matches 6.. if score @s item_font matches 1.. run tellraw @s ["",{"text":"⬛","color":"#aaaaaa","clickEvent":{"action":"run_command","value":"/trigger item_font set -21"},"hoverEvent":{"action":"show_text","value":{"text":"Light Grey","color":"#aaaaaa"}}},{"text":"⬛","color":"#000000","clickEvent":{"action":"run_command","value":"/trigger item_font set -22"},"hoverEvent":{"action":"show_text","value":{"text":"Black","color":"#1f1f1f"}}},{"text":"⬛","color":"#7f0000","clickEvent":{"action":"run_command","value":"/trigger item_font set -23"},"hoverEvent":{"action":"show_text","value":{"text":"Dark Red","color":"#7f0000"}}},{"text":"⬛","color":"#7f3f00","clickEvent":{"action":"run_command","value":"/trigger item_font set -24"},"hoverEvent":{"action":"show_text","value":{"text":"Brass","color":"#7f3f00"}}},{"text":"⬛","color":"#7f7f00","clickEvent":{"action":"run_command","value":"/trigger item_font set -25"},"hoverEvent":{"action":"show_text","value":{"text":"Olive","color":"#7f7f00"}}},{"text":"⬛","color":"#007f00","clickEvent":{"action":"run_command","value":"/trigger item_font set -26"},"hoverEvent":{"action":"show_text","value":{"text":"Dark Green","color":"#007f00"}}},{"text":"⬛","color":"#007f7f","clickEvent":{"action":"run_command","value":"/trigger item_font set -27"},"hoverEvent":{"action":"show_text","value":{"text":"Dark Cyan","color":"#007f7f"}}},{"text":"⬛","color":"#003f7f","clickEvent":{"action":"run_command","value":"/trigger item_font set -28"},"hoverEvent":{"action":"show_text","value":{"text":"Dark Azure","color":"#003f7f"}}},{"text":"⬛","color":"#00007f","clickEvent":{"action":"run_command","value":"/trigger item_font set -29"},"hoverEvent":{"action":"show_text","value":{"text":"Dark Blue","color":"#00007f"}}},{"text":"⬛","color":"#3f007f","clickEvent":{"action":"run_command","value":"/trigger item_font set -30"},"hoverEvent":{"action":"show_text","value":{"text":"Dark Indigo","color":"#3f007f"}}},{"text":"⬛","color":"#7f007f","clickEvent":{"action":"run_command","value":"/trigger item_font set -31"},"hoverEvent":{"action":"show_text","value":{"text":"Dark Magenta","color":"#7f007f"}}},{"text":"⬛","color":"#7f003f","clickEvent":{"action":"run_command","value":"/trigger item_font set -32"},"hoverEvent":{"action":"show_text","value":{"text":"Dark Rose","color":"#7f003f"}}}]
execute if score @s gameplay_perms matches 6.. if score @s item_font matches 1.. run tellraw @s {"text":"================================","color":"aqua"}

#catch errors (check if held item with custom name)
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 run scoreboard players set <can_run> variable 1
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 unless data entity @s SelectedItem.tag.display.Name run scoreboard players set <can_run> variable 0
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 unless score @s item_font matches -32..-1 run scoreboard players set <can_run> variable 0

#store starting name
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 run data modify storage pandamium:font old_name set from entity @s SelectedItem.tag.display.Name

#modify held item custom name
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -32..-1 run tag @s add running_trigger
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -32..-1 if score <can_run> variable matches 1 run setblock 7 64 -6 air

execute if score @s gameplay_perms matches 6.. if score @s item_font matches -1 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"bold":false}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -2 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"bold":true}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -3 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"italic":false}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -4 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"italic":true}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -5 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"underlined":false}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -6 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"underlined":true}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -7 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"strikethrough":false}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -8 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"strikethrough":true}'}

execute if score @s gameplay_perms matches 6.. if score @s item_font matches -9 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#ffffff"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -10 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#555555"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -11 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#ff0000"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -12 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#ff7f00"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -13 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#ffff00"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -14 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#00ff00"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -15 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#00ffff"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -16 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#007fff"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -17 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#0000ff"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -18 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#7f00ff"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -19 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#ff00ff"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -20 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#ff007f"}'}

execute if score @s gameplay_perms matches 6.. if score @s item_font matches -21 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#aaaaaa"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -22 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#000000"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -23 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#7f0000"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -24 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#7f3f00"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -25 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#7f7f00"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -26 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#007f00"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -27 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#007f7f"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -28 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#003f7f"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -29 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#00007f"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -30 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#3f007f"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -31 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#7f007f"}'}
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -32 if score <can_run> variable matches 1 run setblock 7 64 -6 oak_sign{Text1:'{"nbt":"SelectedItem.tag.display.Name","entity":"@p[tag=running_trigger]","interpret":true,"color":"#7f003f"}'}

#check if name changed
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -32..-1 run data modify storage pandamium:font new_name set from block 7 64 -6 Text1
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -32..-1 store success score <different_name> variable run data modify storage pandamium:font old_name set from storage pandamium:font new_name
execute if score @s gameplay_perms matches 6.. if score @s item_font matches -32..-1 if score <different_name> variable matches 0 run scoreboard players set <can_run> variable 0

#transfer new_name
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 if score <can_run> variable matches 1 run item modify entity @s weapon.mainhand pandamium:font/transfer_name

#display success
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 if score <can_run> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Item Font]","color":"dark_green"}," Updated your mainhand item's display name: ",[{"text":"","color":"white","italic":true},{"nbt":"SelectedItem.tag.display.Name","entity":"@s","interpret":true}]]
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 if score <can_run> variable matches 1 at @s run playsound ui.cartography_table.take_result master @s

#display an error message
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 run scoreboard players set <displayed_error> variable 0
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score @s item_font matches -32..-1 run tellraw @s [{"text":"","color":"red"},{"text":"[Item Font]","color":"dark_red"}," Not a valid option!"]
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless data entity @s SelectedItem run tellraw @s [{"text":"","color":"red"},{"text":"[Item Font]","color":"dark_red"}," No item in your main hand!"]
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless data entity @s SelectedItem.tag.display.Name run tellraw @s [{"text":"","color":"red"},{"text":"[Item Font]","color":"dark_red"}," Held item has no custom name!"]
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <different_name> variable matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Item Font]","color":"dark_red"}," Nothing changed!"]

#
tag @s remove running_trigger
scoreboard players reset @s item_font
scoreboard players enable @s item_font
