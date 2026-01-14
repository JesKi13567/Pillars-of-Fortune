$execute if score #ctrl_pillar_count_order_real jkpof.int matches 0 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/0 {n1: $(n1), n2: $(n2)}
$execute if score #ctrl_pillar_count_order_real jkpof.int matches 1..4 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/1_4 {n1: $(n1), n2: $(n2)}
