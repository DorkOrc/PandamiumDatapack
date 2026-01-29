execute if items entity @s weapon.mainhand name_tag[custom_name="#"] run return run item modify entity @s weapon.mainhand pandamium:decrement_count
execute if items entity @s weapon.offhand name_tag[custom_name="#"] run return run item modify entity @s weapon.offhand pandamium:decrement_count
clear @s name_tag[custom_name="#"] 1
