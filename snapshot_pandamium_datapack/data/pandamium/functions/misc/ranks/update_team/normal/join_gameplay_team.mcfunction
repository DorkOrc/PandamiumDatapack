function pandamium:misc/ranks/get_gameplay_rank
execute if score <gameplay_rank> variable matches 0 run team join guest
execute if score <gameplay_rank> variable matches 1 run team join player
execute if score <gameplay_rank> variable matches 2 run team join member
execute if score <gameplay_rank> variable matches 3 run team join elder
execute if score <gameplay_rank> variable matches 4 run team join veteran
execute if score <gameplay_rank> variable matches 5 run team join elite
