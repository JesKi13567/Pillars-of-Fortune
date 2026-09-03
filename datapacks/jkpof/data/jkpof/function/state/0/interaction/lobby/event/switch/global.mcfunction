function jkpof:state/0/interaction/lobby/event/preset/custom
scoreboard players set #event_ctrl jkpof.int 9

# 单独设置
execute if score #event_order jkpof.int matches -3 run scoreboard players add #event_broom jkpof.int 1
execute if score #event_order jkpof.int matches -2 run scoreboard players add #event_vote jkpof.int 1
execute if score #event_order jkpof.int matches -1 run scoreboard players add #event_enable__1 jkpof.int 1
execute if score #event_order jkpof.int matches 0 run scoreboard players add #event_enable_0 jkpof.int 1

execute if score #event_broom jkpof.int matches 2.. run scoreboard players set #event_broom jkpof.int 0
execute if score #event_vote jkpof.int matches 2.. run scoreboard players set #event_vote jkpof.int 0
execute if score #event_enable__1 jkpof.int matches 2.. run scoreboard players set #event_enable__1 jkpof.int 0
execute if score #event_enable_0 jkpof.int matches 2.. run scoreboard players set #event_enable_0 jkpof.int 0

execute if score #event_order jkpof.int matches 1 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 1}
execute if score #event_order jkpof.int matches 2 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 2}
execute if score #event_order jkpof.int matches 3 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 3}
execute if score #event_order jkpof.int matches 4 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 4}
execute if score #event_order jkpof.int matches 5 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 5}
execute if score #event_order jkpof.int matches 6 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 6}
execute if score #event_order jkpof.int matches 7 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 7}
execute if score #event_order jkpof.int matches 8 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 8}
execute if score #event_order jkpof.int matches 9 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 9}
execute if score #event_order jkpof.int matches 10 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 10}
execute if score #event_order jkpof.int matches 11 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 11}
execute if score #event_order jkpof.int matches 12 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 12}
execute if score #event_order jkpof.int matches 13 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 13}
execute if score #event_order jkpof.int matches 14 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 14}
execute if score #event_order jkpof.int matches 15 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 15}
execute if score #event_order jkpof.int matches 16 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 16}
execute if score #event_order jkpof.int matches 17 run function jkpof:state/0/interaction/lobby/event/switch/by_num {n: 17}

function jkpof:state/0/interaction/lobby/event/show/global
