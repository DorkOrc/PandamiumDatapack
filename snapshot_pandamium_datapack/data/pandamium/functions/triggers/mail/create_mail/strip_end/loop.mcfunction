data modify storage pandamium:temp character set value " "
data modify storage pandamium:temp character set string storage pandamium:text lines[-1] -1

execute unless data storage pandamium:temp {character:" "} unless data storage pandamium:temp {character:"‌"} run return 1

data modify storage pandamium:text lines[-1] set string storage pandamium:text lines[-1] 0 -1
data modify storage pandamium:temp result set string storage pandamium:text lines[-1]
execute if data storage pandamium:temp {result:""} run data remove storage pandamium:text lines[-1]

execute if data storage pandamium:text lines[-1] run return run function pandamium:triggers/mail/create_mail/strip_end/loop
return 0
