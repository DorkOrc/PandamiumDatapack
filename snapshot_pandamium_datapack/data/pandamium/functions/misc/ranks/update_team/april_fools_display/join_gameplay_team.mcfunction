function pandamium:misc/ranks/get_gameplay_rank
execute if score <gameplay_rank> variable matches 0 run team join april_fools.display_guest
execute if score <gameplay_rank> variable matches 1 run team join april_fools.display_player
execute if score <gameplay_rank> variable matches 2 run team join april_fools.display_member
execute if score <gameplay_rank> variable matches 3 run team join april_fools.display_elder
execute if score <gameplay_rank> variable matches 4 run team join april_fools.display_veteran
execute if score <gameplay_rank> variable matches 5 run team join april_fools.display_elite
