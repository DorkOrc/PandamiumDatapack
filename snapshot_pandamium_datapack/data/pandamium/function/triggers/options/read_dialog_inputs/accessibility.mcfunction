# get inputs
execute store result score <disable_tpa_requests> variable run scoreboard players operation @s options /= #-10 constant
scoreboard players operation <disable_tpa_requests> variable %= #10 constant
execute unless score <disable_tpa_requests> variable matches 0..2 run return run tellraw @s [{color:"dark_red",text:"[Options]"},{color:"red",text:" An error occurred whilst saving your options!"}]

execute store result score <disable_receiving_mail> variable run scoreboard players operation @s options /= #10 constant
scoreboard players operation <disable_receiving_mail> variable %= #10 constant
execute unless score <disable_receiving_mail> variable matches 0..2 run return run tellraw @s [{color:"dark_red",text:"[Options]"},{color:"red",text:" An error occurred whilst saving your options!"}]

execute store result score <disable_dynamic_tpa_triggers> variable run scoreboard players operation @s options /= #10 constant
scoreboard players operation <disable_dynamic_tpa_triggers> variable %= #10 constant
execute unless score <disable_dynamic_tpa_triggers> variable matches 0..1 run return run tellraw @s [{color:"dark_red",text:"[Options]"},{color:"red",text:" An error occurred whilst saving your options!"}]

execute store result score <disable_dynamic_home_triggers> variable run scoreboard players operation @s options /= #10 constant
scoreboard players operation <disable_dynamic_home_triggers> variable %= #10 constant
execute unless score <disable_dynamic_home_triggers> variable matches 0..1 run return run tellraw @s [{color:"dark_red",text:"[Options]"},{color:"red",text:" An error occurred whilst saving your options!"}]

execute store result score <enable_dynamic_mail_triggers> variable run scoreboard players operation @s options /= #10 constant
scoreboard players operation <enable_dynamic_mail_triggers> variable %= #10 constant
execute unless score <enable_dynamic_mail_triggers> variable matches 0..1 run return run tellraw @s [{color:"dark_red",text:"[Options]"},{color:"red",text:" An error occurred whilst saving your options!"}]

execute store result score <enable_mini_block_help_trigger> variable run scoreboard players operation @s options /= #10 constant
scoreboard players operation <enable_mini_block_help_trigger> variable %= #10 constant
execute unless score <enable_mini_block_help_trigger> variable matches 0..1 run return run tellraw @s [{color:"dark_red",text:"[Options]"},{color:"red",text:" An error occurred whilst saving your options!"}]

execute store result score <pronouns_type> variable run scoreboard players operation @s options /= #10 constant
scoreboard players operation <pronouns_type> variable %= #10 constant
execute unless score <pronouns_type> variable matches 0..3 run return run tellraw @s [{color:"dark_red",text:"[Options]"},{color:"red",text:" An error occurred whilst saving your options!"}]

# apply options
execute if score <disable_tpa_requests> variable matches 0 run scoreboard players reset @s disable_tpa_requests
execute if score <disable_tpa_requests> variable matches 1 run scoreboard players set @s disable_tpa_requests 1
execute if score <disable_tpa_requests> variable matches 2 run scoreboard players set @s disable_tpa_requests 2
execute if score <disable_receiving_mail> variable matches 0 run scoreboard players reset @s disable_receiving_mail
execute if score <disable_receiving_mail> variable matches 1 run scoreboard players set @s disable_receiving_mail 1
execute if score <disable_receiving_mail> variable matches 2 run scoreboard players set @s disable_receiving_mail 2
execute if score <disable_dynamic_tpa_triggers> variable matches 0 run scoreboard players reset @s optn.disable_dynamic_triggers.tpa_names
execute if score <disable_dynamic_tpa_triggers> variable matches 1 run scoreboard players set @s optn.disable_dynamic_triggers.tpa_names 1
execute if score <disable_dynamic_home_triggers> variable matches 0 run scoreboard players reset @s optn.disable_dynamic_triggers.home_names
execute if score <disable_dynamic_home_triggers> variable matches 1 run scoreboard players set @s optn.disable_dynamic_triggers.home_names 1
execute if score <enable_dynamic_mail_triggers> variable matches 0 run scoreboard players reset @s optn.enable_dynamic_triggers.mail_names
execute if score <enable_dynamic_mail_triggers> variable matches 1 run scoreboard players set @s optn.enable_dynamic_triggers.mail_names 1
execute if score <enable_mini_block_help_trigger> variable matches 0 run scoreboard players reset @s optn.enable_mini_block_help_trigger
execute if score <enable_mini_block_help_trigger> variable matches 1 run scoreboard players set @s optn.enable_mini_block_help_trigger 1

function pandamium:utils/database/players/load/self
execute if score <pronouns_type> variable matches 1..3 store result storage pandamium.db.players:io selected.entry.data.pronouns_type byte 1 run scoreboard players operation @s pronouns_type = <pronouns_type> variable
execute if score <pronouns_type> variable matches 0 run data remove storage pandamium.db.players:io selected.entry.data.pronouns_type
execute if score <pronouns_type> variable matches 0 run scoreboard players reset @s pronouns_type
function pandamium:utils/database/players/save
function pandamium:player/update_tablist_value
