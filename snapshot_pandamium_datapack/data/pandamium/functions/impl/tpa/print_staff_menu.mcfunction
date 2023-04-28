tellraw @a[tag=source,limit=1] [{"text":"======== ","color":"yellow"},{"text":"TP Menu","bold":true}," ========\n",{"text":"Player List:","bold":true}]

execute as @a[team=guest] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=player] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=member] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=elder] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=veteran] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=elite] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=helper] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=mod] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=srmod] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=admin] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=donator] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=vip] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]

tellraw @a[tag=source,limit=1] {"text":"=========================","color":"yellow"}
