team leave @a
execute as @a[scores={id=2..}] run function pandamium:player/ranks/update_team/normal

execute as @a[team=guest] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=player] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=member] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=elder] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=veteran] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=elite] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=helper] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=mod] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=srmod] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=admin] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=owner] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=donator] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[team=vip] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]

execute as @a run function pandamium:player/ranks/update_team
