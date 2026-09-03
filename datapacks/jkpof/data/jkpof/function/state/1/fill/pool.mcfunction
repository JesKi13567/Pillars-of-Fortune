$execute if score #ctrl_pillar_height jkpof.int matches 21.. positioned 0 $(h) 0 run fill -$(r) ~-19 -$(r) $(r) ~-20 $(r) water strict
$execute if score #ctrl_pillar_height jkpof.int matches ..20 if score #ctrl_upside_down jkpof.int matches 1 positioned 0 $(h) 0 run fill -$(r) ~-19 -$(r) $(r) ~-20 $(r) water strict
$execute if score #ctrl_pillar_height jkpof.int matches ..20 if score #ctrl_upside_down jkpof.int matches 0 positioned 0 $(h) 0 run fill -$(r) 2 -$(r) $(r) 3 $(r) water strict
