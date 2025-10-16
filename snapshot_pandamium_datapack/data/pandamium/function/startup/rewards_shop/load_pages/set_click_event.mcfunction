# arguments: reward_index

$data modify storage pandamium:local functions."pandamium:startup/rewards_shop/load_pages/append_item".command set value "/trigger vote_shop set -$(reward_index)"
