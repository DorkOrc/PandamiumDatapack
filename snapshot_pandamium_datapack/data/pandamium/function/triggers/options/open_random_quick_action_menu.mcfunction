execute store result score <roll> variable run random value 1..6
execute if score <roll> variable matches 1 run dialog show @s pandamium:quick_actions/aggressive
execute if score <roll> variable matches 2 run dialog show @s pandamium:quick_actions/brown
execute if score <roll> variable matches 3 run dialog show @s pandamium:quick_actions/lazy
execute if score <roll> variable matches 4 run dialog show @s pandamium:quick_actions/playful
execute if score <roll> variable matches 5 run dialog show @s pandamium:quick_actions/weak
execute if score <roll> variable matches 6 run dialog show @s pandamium:quick_actions/worried
