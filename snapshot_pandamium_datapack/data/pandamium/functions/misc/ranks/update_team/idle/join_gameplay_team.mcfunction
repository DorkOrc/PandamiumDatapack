function pandamium:misc/ranks/get_gameplay_rank
execute if score <gameplay_rank> variable matches 0 run team join guest_idle
execute if score <gameplay_rank> variable matches 1 run team join player_idle
execute if score <gameplay_rank> variable matches 2 run team join member_idle
execute if score <gameplay_rank> variable matches 3 run team join elder_idle
execute if score <gameplay_rank> variable matches 4 run team join veteran_idle
execute if score <gameplay_rank> variable matches 5 run team join elite_idle
