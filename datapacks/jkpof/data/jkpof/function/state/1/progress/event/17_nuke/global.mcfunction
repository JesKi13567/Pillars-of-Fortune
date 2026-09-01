# 按象限
execute if score #event_plus_17 jkpof.int matches 0 if score #event_nuke.q jkpof.int matches 1 run particle dust{color: [1, 0, 0], scale: 4} 12 50 12 5 100 5 0.1 40 force @a
execute if score #event_plus_17 jkpof.int matches 0 if score #event_nuke.q jkpof.int matches 2 run particle dust{color: [1, 0, 0], scale: 4} 12 50 -12 5 100 5 0.1 40 force @a
execute if score #event_plus_17 jkpof.int matches 0 if score #event_nuke.q jkpof.int matches 3 run particle dust{color: [1, 0, 0], scale: 4} -12 50 -12 5 100 5 0.1 40 force @a
execute if score #event_plus_17 jkpof.int matches 0 if score #event_nuke.q jkpof.int matches 4 run particle dust{color: [1, 0, 0], scale: 4} -12 50 12 5 100 5 0.1 40 force @a
execute if score #event_plus_17 jkpof.int matches 1 if score #event_nuke.q jkpof.int matches 1 run particle dust{color: [1, 0.8, 0.2], scale: 4} 12 50 12 5 100 5 0.1 40 force @a
execute if score #event_plus_17 jkpof.int matches 1 if score #event_nuke.q jkpof.int matches 2 run particle dust{color: [1, 0.8, 0.2], scale: 4} 12 50 -12 5 100 5 0.1 40 force @a
execute if score #event_plus_17 jkpof.int matches 1 if score #event_nuke.q jkpof.int matches 3 run particle dust{color: [1, 0.8, 0.2], scale: 4} -12 50 -12 5 100 5 0.1 40 force @a
execute if score #event_plus_17 jkpof.int matches 1 if score #event_nuke.q jkpof.int matches 4 run particle dust{color: [1, 0.8, 0.2], scale: 4} -12 50 12 5 100 5 0.1 40 force @a

execute if score #event_time jkpof.int matches 0 run function jkpof:state/1/progress/event/17_nuke/erase
