scoreboard players set @s tablist_value -1

data modify storage pandamium:local functions."pandamium:player/update_tablist_value".components set value []

execute if score @s pronouns_type matches 1 run data modify storage pandamium:local functions."pandamium:player/update_tablist_value".components append value {color:"gray",font:"minecraft:uniform",text:"(",extra:["he","/","him",")"]}
execute if score @s pronouns_type matches 2 run data modify storage pandamium:local functions."pandamium:player/update_tablist_value".components append value {color:"gray",font:"minecraft:uniform",text:"(",extra:["she","/","her",")"]}
execute if score @s pronouns_type matches 3 run data modify storage pandamium:local functions."pandamium:player/update_tablist_value".components append value {color:"gray",font:"minecraft:uniform",text:"(",extra:["they","/","them",")"]}
execute if score @s pronouns_type matches 1..3 if score @s secondary_pronouns_type matches 1 unless score @s pronouns_type matches 1 run data modify storage pandamium:local functions."pandamium:player/update_tablist_value".components[-1].extra[2] set value "he"
execute if score @s pronouns_type matches 1..3 if score @s secondary_pronouns_type matches 2 unless score @s pronouns_type matches 2 run data modify storage pandamium:local functions."pandamium:player/update_tablist_value".components[-1].extra[2] set value "she"
execute if score @s pronouns_type matches 1..3 if score @s secondary_pronouns_type matches 3 unless score @s pronouns_type matches 3 run data modify storage pandamium:local functions."pandamium:player/update_tablist_value".components[-1].extra[2] set value "they"

execute if predicate pandamium:player/is_jailed run data modify storage pandamium:local functions."pandamium:player/update_tablist_value".components append value {color:"red",text:"[Jailed]"}
execute unless predicate pandamium:player/is_jailed if entity @s[scores={idle.time=1..1073741823},predicate=!pandamium:player/is_hidden] run data modify storage pandamium:local functions."pandamium:player/update_tablist_value".components append value {color:"gray",text:"[Idle]"}
execute unless predicate pandamium:player/is_jailed if entity @s[scores={idle.time=1073741824..},predicate=!pandamium:player/is_hidden] run data modify storage pandamium:local functions."pandamium:player/update_tablist_value".components append value {color:"gray",text:"[AFK]"}

# set blank if nothing is present
execute unless data storage pandamium:local functions."pandamium:player/update_tablist_value".components[0] run return run scoreboard players display numberformat @s tablist_value blank

# set text
data modify storage pandamium:local functions."pandamium:player/update_tablist_value".components prepend value ["",""]
data modify storage pandamium:local functions."pandamium:player/update_tablist_value".components[0][1] set from storage pandamium:local functions."pandamium:player/update_tablist_value".components[1]
data remove storage pandamium:local functions."pandamium:player/update_tablist_value".components[1]
scoreboard players display numberformat @s tablist_value fixed {storage:"pandamium:local",nbt:'functions."pandamium:player/update_tablist_value".components[]',interpret:true,separator:" "}
