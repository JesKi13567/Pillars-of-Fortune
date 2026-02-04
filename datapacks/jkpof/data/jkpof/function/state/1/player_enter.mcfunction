gamemode survival @s
spawnpoint @s 0 120 0
recipe give @s *
scoreboard players set @s jkpof.state 2
scoreboard players set @s jkpof.lives 1

# 玩家标号
execute store result score @s jkpof.id run scoreboard players add #id_temp jkpof.int 1

execute if score #ctrl_team jkpof.int matches 0 run tp @s[scores={jkpof.id=1}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=1}]
execute if score #ctrl_team jkpof.int matches 0 run tp @s[scores={jkpof.id=2}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=2}]
execute if score #ctrl_team jkpof.int matches 0 run tp @s[scores={jkpof.id=3}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=3}]
execute if score #ctrl_team jkpof.int matches 0 run tp @s[scores={jkpof.id=4}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=4}]
execute if score #ctrl_team jkpof.int matches 0 run tp @s[scores={jkpof.id=5}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=5}]
execute if score #ctrl_team jkpof.int matches 0 run tp @s[scores={jkpof.id=6}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=6}]
execute if score #ctrl_team jkpof.int matches 0 run tp @s[scores={jkpof.id=7}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=7}]
execute if score #ctrl_team jkpof.int matches 0 run tp @s[scores={jkpof.id=8}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=8}]
execute if score #ctrl_team jkpof.int matches 0 run tp @s[scores={jkpof.id=9}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=9}]
execute if score #ctrl_team jkpof.int matches 0 run tp @s[scores={jkpof.id=10}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=10}]
execute if score #ctrl_team jkpof.int matches 0 run tp @s[scores={jkpof.id=11}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=11}]
execute if score #ctrl_team jkpof.int matches 0 run tp @s[scores={jkpof.id=12}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=12}]

execute if score #ctrl_team jkpof.int matches 1..2 run tp @s[scores={jkpof.team=1}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=1}]
execute if score #ctrl_team jkpof.int matches 1..2 run tp @s[scores={jkpof.team=2}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=2}]
execute if score #ctrl_team jkpof.int matches 1..2 run tp @s[scores={jkpof.team=3}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=3}]
execute if score #ctrl_team jkpof.int matches 1..2 run tp @s[scores={jkpof.team=4}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=4}]
execute if score #ctrl_team jkpof.int matches 1..2 run tp @s[scores={jkpof.team=5}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=5}]
execute if score #ctrl_team jkpof.int matches 1..2 run tp @s[scores={jkpof.team=6}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=6}]
execute if score #ctrl_team jkpof.int matches 1..2 run tp @s[scores={jkpof.team=7}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=7}]
execute if score #ctrl_team jkpof.int matches 1..2 run tp @s[scores={jkpof.team=8}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=8}]
execute if score #ctrl_team jkpof.int matches 1..2 run tp @s[scores={jkpof.team=9}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=9}]
execute if score #ctrl_team jkpof.int matches 1..2 run tp @s[scores={jkpof.team=10}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=10}]
execute if score #ctrl_team jkpof.int matches 1..2 run tp @s[scores={jkpof.team=11}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=11}]
execute if score #ctrl_team jkpof.int matches 1..2 run tp @s[scores={jkpof.team=12}] @e[type=marker, tag=jkpof_player_spawn, limit=1, scores={jkpof.id=12}]

# 杂项
execute if score #ctrl_night_vision jkpof.int matches 1 run effect give @s night_vision infinite 0 true
execute if score #ctrl_kid_mode jkpof.int matches 1 run attribute @s scale base set 0.5
