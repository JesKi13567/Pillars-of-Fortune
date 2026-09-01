execute if score #event_plus_4 jkpof.int matches 0 run effect give @a[scores={jkpof.state=2}] jump_boost 1 9
execute if score #event_plus_4 jkpof.int matches 0 run effect give @a[scores={jkpof.state=2}] slow_falling 1 0
execute if score #event_plus_4 jkpof.int matches 1 run effect give @a[scores={jkpof.state=2}] jump_boost 1 19

execute if score #event_plus_4 jkpof.int matches 0 run function jkpof:state/1/progress/event/_end {name: 'moon_walk'}
execute if score #event_plus_4 jkpof.int matches 1 run function jkpof:state/1/progress/event/_end {name: 'plus.moon_walk'}

execute if score #event_plus_4 jkpof.int matches 1 if score #event_time jkpof.int matches 0 unless score #test_mode jkpof.int matches 1 run gamerule fall_damage true
