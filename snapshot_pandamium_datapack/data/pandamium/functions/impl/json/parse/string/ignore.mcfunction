data modify storage pandamium:json char set string storage pandamium:json string 0 1
data modify storage pandamium:json string set string storage pandamium:json string 1

execute if data storage pandamium:json {char:'\\'} run function pandamium:impl/json/parse/string/escape_character

execute unless data storage pandamium:json {char:'"'} run function pandamium:impl/json/parse/string/ignore
