# arguments: reward_index

$data modify storage pandamium:local functions."pandamium:trggiers/rewards_shop/buy/*" set from storage pandamium:rewards_shop rewards[{reward_index:$(reward_index)}]
