team leave @a
execute as @a[scores={id=2..}] run function pandamium:player/ranks/force_team/normal

execute as @a[scores={gameplay_perms=0,staff_perms=0}] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[scores={gameplay_perms=1,staff_perms=0}] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[scores={gameplay_perms=2,staff_perms=0}] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[scores={gameplay_perms=3,staff_perms=0}] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[scores={gameplay_perms=4,staff_perms=0}] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[scores={gameplay_perms=5,staff_perms=0}] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[scores={staff_perms=1}] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[scores={staff_perms=2}] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[scores={staff_perms=3}] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[scores={staff_perms=4}] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[scores={staff_perms=5}] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]
execute as @a[scores={gameplay_perms=6,staff_perms=0}] run tellraw @a[tag=source,limit=1] [{"text":" ","color":"aqua"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"green","bold":true}]


execute as @a run function pandamium:player/ranks/update_team
