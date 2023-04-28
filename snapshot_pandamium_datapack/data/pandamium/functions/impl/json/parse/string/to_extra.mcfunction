data modify storage pandamium:json char set string storage pandamium:json string 0 1
data modify storage pandamium:json string set string storage pandamium:json string 1

execute if data storage pandamium:json {char:'\\'} run function pandamium:impl/json/parse/string/escape_character
execute if data storage pandamium:json {char:'\\'} run data modify storage pandamium:json stack[-1].extra append from storage pandamium:json escaped_character
execute unless data storage pandamium:json {char:'\\'} unless data storage pandamium:json {char:'"'} run data modify storage pandamium:json stack[-1].extra append from storage pandamium:json char

execute unless data storage pandamium:json {char:'"'} run function pandamium:impl/json/parse/string/to_extra
