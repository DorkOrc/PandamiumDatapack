scoreboard players set @s gameplay_rank 0
execute if predicate pandamium:player/gameplay_rank/player run scoreboard players set @s gameplay_rank 1
execute if predicate pandamium:player/gameplay_rank/member run scoreboard players set @s gameplay_rank 2
execute if predicate pandamium:player/gameplay_rank/elder run scoreboard players set @s gameplay_rank 3
execute if predicate pandamium:player/gameplay_rank/veteran run scoreboard players set @s gameplay_rank 4
execute if predicate pandamium:player/gameplay_rank/elite run scoreboard players set @s gameplay_rank 5
scoreboard players operation @s gameplay_perms = @s gameplay_rank
scoreboard players reset @s[scores={gameplay_perms=..0}] gameplay_perms
