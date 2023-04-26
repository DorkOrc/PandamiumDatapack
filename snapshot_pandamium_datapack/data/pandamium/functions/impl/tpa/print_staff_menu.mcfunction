tellraw @p[tag=source] [{"text":"======== ","color":"yellow"},{"text":"TP Menu","bold":true}," ========\n",{"text":"Player List:","bold":true}]

execute as @a[team=guest] run tellraw @p[tag=source] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=player] run tellraw @p[tag=source] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=member] run tellraw @p[tag=source] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=elder] run tellraw @p[tag=source] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=veteran] run tellraw @p[tag=source] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=elite] run tellraw @p[tag=source] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=helper] run tellraw @p[tag=source] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=mod] run tellraw @p[tag=source] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=srmod] run tellraw @p[tag=source] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=admin] run tellraw @p[tag=source] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=donator] run tellraw @p[tag=source] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute as @a[team=vip] run tellraw @p[tag=source] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]

tellraw @p[tag=source] {"text":"=========================","color":"yellow"}
