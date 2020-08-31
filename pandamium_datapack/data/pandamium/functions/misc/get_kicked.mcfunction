execute as @p run loot replace block -2 52 -1 container.0 loot pandamium:head
execute as @s run loot replace block -2 52 -1 container.1 loot pandamium:head
tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray","italic":true},{"nbt":"Items[0].tag.SkullOwner.Name","block":"-2 52 -1"}," (",{"score":{"name":"@p","objective":"id"}},") was kicked by ",{"nbt":"Items[1].tag.SkullOwner.Name","block":"-2 52 -1"},"!"]

kick @p You were kicked by a staff member!
