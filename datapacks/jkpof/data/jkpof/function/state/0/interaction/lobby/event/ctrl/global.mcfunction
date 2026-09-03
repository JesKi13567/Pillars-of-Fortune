function jkpof:state/0/interaction/lobby/event/preset/custom

# 一键 已禁用 已启用 仅事件+ 混合
scoreboard players add #event_ctrl jkpof.int 1
execute if score #event_ctrl jkpof.int matches 4.. run scoreboard players set #event_ctrl jkpof.int 0

execute if score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_broom jkpof.int 0
execute if score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_vote jkpof.int 0
execute if score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_enable__1 jkpof.int 0
execute if score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_enable_0 jkpof.int 0

execute unless score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_broom jkpof.int 1
execute unless score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_vote jkpof.int 1
execute unless score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_enable__1 jkpof.int 1
execute unless score #event_ctrl jkpof.int matches 0 run scoreboard players set #event_enable_0 jkpof.int 1

function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 1}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 2}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 3}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 4}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 5}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 6}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 7}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 8}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 9}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 10}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 11}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 12}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 13}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 14}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 15}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 16}
function jkpof:state/0/interaction/lobby/event/ctrl/by_num {n: 17}

function jkpof:state/0/interaction/lobby/event/show/global
