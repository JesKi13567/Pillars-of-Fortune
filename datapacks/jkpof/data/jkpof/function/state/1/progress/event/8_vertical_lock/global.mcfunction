execute if score #event_plus_8 jkpof.int matches 0 if score #event_time jkpof.int matches 1.. at @e[type=marker, tag=jkpof_vertical_lock] run fill -24 ~ -24 24 ~ 24 barrier replace #replaceable
execute if score #event_plus_8 jkpof.int matches 0 if score #event_time jkpof.int matches 0 at @e[type=marker, tag=jkpof_vertical_lock] run fill -24 ~ -24 24 ~ 24 air replace barrier
execute if score #event_plus_8 jkpof.int matches 1 if score #event_time jkpof.int matches 1.. at @e[type=marker, tag=jkpof_vertical_lock] run fill ~ -64 ~ ~ 120 ~ barrier replace #replaceable
execute if score #event_plus_8 jkpof.int matches 1 if score #event_time jkpof.int matches 0 at @e[type=marker, tag=jkpof_vertical_lock] run fill ~ -64 ~ ~ 120 ~ air replace barrier
execute if score #event_time jkpof.int matches 0 run kill @e[type=marker, tag=jkpof_vertical_lock]

execute if score #event_plus_8 jkpof.int matches 0 run function jkpof:state/1/progress/event/_end {name: 'vertical_lock'}
execute if score #event_plus_8 jkpof.int matches 1 run function jkpof:state/1/progress/event/_end {name: 'plus.vertical_lock'}
