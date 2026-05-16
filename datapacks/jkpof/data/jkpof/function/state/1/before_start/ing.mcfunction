scoreboard players remove #before_start jkpof.int 1
execute unless score #test_mode jkpof.int matches 1 if score #before_start jkpof.int matches 1 run scoreboard players add @a[scores={jkpof.state=2}] jkpof.stats.round 1
execute as @e[type=marker, tag=jkpof_player_spawn] at @s run function jkpof:state/1/before_start/in
