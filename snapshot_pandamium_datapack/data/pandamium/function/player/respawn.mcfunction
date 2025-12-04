execute if score @s parkour.checkpoint matches 0.. run function pandamium:impl/parkour/actions/cancel/teleporting
spectate

gamerule show_death_messages false
kill
gamerule show_death_messages true

execute unless predicate pandamium:player/min_staff_perms/moderator run gamemode survival @s[gamemode=spectator]
