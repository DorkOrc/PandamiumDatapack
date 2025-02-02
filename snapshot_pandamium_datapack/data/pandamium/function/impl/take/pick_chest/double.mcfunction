execute unless block ~ ~ ~ chest run setblock ~ ~ ~ chest[facing=west,type=right]{} strict
execute unless block ~ ~ ~1 chest run setblock ~ ~ ~1 chest[facing=west,type=left]{} strict

execute store success score <can_insert> variable unless items block ~ ~ ~ container.* *
execute if score <can_insert> variable matches 1 store success score <can_insert> variable unless items block ~ ~ ~1 container.* *

execute if score <can_insert> variable matches 0 run tp ~ ~1 ~
execute if score <can_insert> variable matches 0 at @s run function pandamium:impl/take/pick_chest/double
