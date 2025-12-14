$execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..3 run function jkpof:state/0/interaction/ctrl/pillar/distance/0_3 {n1: $(n1), n2: $(n2)}
$execute if score #ctrl_pillar_count_order_real jkpof.int matches 4 run function jkpof:state/0/interaction/ctrl/pillar/distance/0_4 {n1: $(n1), n2: $(n2)}
