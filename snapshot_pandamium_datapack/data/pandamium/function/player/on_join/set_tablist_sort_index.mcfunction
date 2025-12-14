execute if predicate pandamium:player/displayed_rank/owner run return run scoreboard players set @s tablist_sort_index 100
execute if predicate pandamium:player/displayed_rank/admin run return run scoreboard players set @s tablist_sort_index 101
execute if predicate pandamium:player/displayed_rank/senior_moderator run return run scoreboard players set @s tablist_sort_index 102
execute if predicate pandamium:player/displayed_rank/moderator run return run scoreboard players set @s tablist_sort_index 103
execute if predicate pandamium:player/displayed_rank/helper run return run scoreboard players set @s tablist_sort_index 104
execute if predicate pandamium:player/displayed_rank/vip run return run scoreboard players set @s tablist_sort_index 106
execute if predicate pandamium:player/displayed_rank/supporter run return run scoreboard players set @s tablist_sort_index 105
execute if predicate pandamium:player/displayed_rank/elite run return run scoreboard players set @s tablist_sort_index 107
execute if predicate pandamium:player/displayed_rank/veteran run return run scoreboard players set @s tablist_sort_index 108
execute if predicate pandamium:player/displayed_rank/elder run return run scoreboard players set @s tablist_sort_index 109
execute if predicate pandamium:player/displayed_rank/member run return run scoreboard players set @s tablist_sort_index 110
execute if predicate pandamium:player/displayed_rank/player run return run scoreboard players set @s tablist_sort_index 111
execute if predicate pandamium:player/displayed_rank/guest run return run scoreboard players set @s tablist_sort_index 112

# else
return run scoreboard players set @s tablist_sort_index 199
