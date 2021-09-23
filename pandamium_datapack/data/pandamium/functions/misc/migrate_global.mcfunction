# To be removed shortly after reload, along with lines 1-3 from [pandamium:startup]

scoreboard objectives add global dummy

scoreboard players operation <next_id> global = <next_id> variable
scoreboard players operation <next_auto_jail_log_index> global = <next_auto_jail_log_index> variable

scoreboard players operation <year> global = <year> variable
scoreboard players operation <month> global = <month> variable
scoreboard players operation <day> global = <day> variable
scoreboard players operation <hour> global = <hour> variable

scoreboard players set <migrated_global> global 1
