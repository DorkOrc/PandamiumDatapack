advancement revoke @s only pandamium:detect/use_golden_dandelion_on_forced_baby

title @s actionbar {color:"red",text:"This mob's age cannot be unlocked"}

# return golden dandelion
execute if entity @s[gamemode=creative] run return 1
execute unless items entity @s weapon.mainhand * run return run item replace entity @s weapon.mainhand with golden_dandelion
give @s golden_dandelion
