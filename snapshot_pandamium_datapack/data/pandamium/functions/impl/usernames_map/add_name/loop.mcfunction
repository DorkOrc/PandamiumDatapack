execute unless data storage pandamium:temp command_parts{1:""} run data modify storage pandamium:templates macro.index__value.value set value '.children'
execute unless data storage pandamium:temp command_parts{1:""} run function pandamium:impl/usernames_map/add_name/append_command_part with storage pandamium:templates macro.index__value

data modify storage pandamium:templates macro.index__value.value set value "[{character:\\\""
function pandamium:impl/usernames_map/add_name/append_command_part with storage pandamium:templates macro.index__value

data modify storage pandamium:templates macro.character.character set string storage pandamium:temp this_username 0 1
function pandamium:impl/usernames_map/add_name/lowercaseify with storage pandamium:templates macro.character
data modify storage pandamium:templates macro.index__value.value set from storage pandamium:templates macro.character.character
function pandamium:impl/usernames_map/add_name/append_command_part with storage pandamium:templates macro.index__value

data modify storage pandamium:templates macro.index__value.value set value "\\\"}]"
function pandamium:impl/usernames_map/add_name/append_command_part with storage pandamium:templates macro.index__value

data modify storage pandamium:temp this_username set string storage pandamium:temp this_username 1
execute unless data storage pandamium:temp {this_username:""} run return run function pandamium:impl/usernames_map/add_name/loop
