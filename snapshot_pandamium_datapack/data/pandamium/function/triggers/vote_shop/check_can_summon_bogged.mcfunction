scoreboard players set <can_buy> variable 0

execute at @s \
    if block ~0.3 ~1.99 ~0.3 #pandamium:mobs_cannot_suffocate_in \
    if block ~0.3 ~1.99 ~-0.3 #pandamium:mobs_cannot_suffocate_in \
    if block ~ ~1.99 ~0.3 #pandamium:mobs_cannot_suffocate_in \
    if block ~ ~1.99 ~-0.3 #pandamium:mobs_cannot_suffocate_in \
    if block ~-0.3 ~1.99 ~0.3 #pandamium:mobs_cannot_suffocate_in \
    if block ~-0.3 ~1.99 ~-0.3 #pandamium:mobs_cannot_suffocate_in \
    \
    if block ~0.3 ~1 ~0.3 #pandamium:mobs_cannot_suffocate_in \
    if block ~0.3 ~1 ~-0.3 #pandamium:mobs_cannot_suffocate_in \
    if block ~ ~1 ~0.3 #pandamium:mobs_cannot_suffocate_in \
    if block ~ ~1 ~-0.3 #pandamium:mobs_cannot_suffocate_in \
    if block ~-0.3 ~1 ~0.3 #pandamium:mobs_cannot_suffocate_in \
    if block ~-0.3 ~1 ~-0.3 #pandamium:mobs_cannot_suffocate_in \
    \
    if block ~0.3 ~ ~0.3 #pandamium:mobs_cannot_suffocate_in \
    if block ~0.3 ~ ~-0.3 #pandamium:mobs_cannot_suffocate_in \
    if block ~ ~ ~0.3 #pandamium:mobs_cannot_suffocate_in \
    if block ~ ~ ~-0.3 #pandamium:mobs_cannot_suffocate_in \
    if block ~-0.3 ~ ~0.3 #pandamium:mobs_cannot_suffocate_in \
    if block ~-0.3 ~ ~-0.3 #pandamium:mobs_cannot_suffocate_in \
    \
    run scoreboard players set <can_buy> variable 1

execute if score <can_buy> variable matches 0 run scoreboard players set <mob_cannot_spawn> variable 1
