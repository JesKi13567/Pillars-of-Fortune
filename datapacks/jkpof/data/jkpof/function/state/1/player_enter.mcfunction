gamemode survival @s
spawnpoint @s 0 130 0
scoreboard players set @s jkpof.state 2
execute store result score @s jkpof.id run scoreboard players add #player_temp jkpof.int 1

# 分数对齐，传送
tag @s add jkpof_player_wait
execute as @e[type=marker, tag=jkpof_player_spawn] if score @s jkpof.int = @p[tag=jkpof_player_wait] jkpof.id run tp @p[tag=jkpof_player_wait] @s
tag @s remove jkpof_player_wait

# 夜视
execute if score #ctrl_night_vision jkpof.int matches 1 run effect give @s night_vision infinite 0 true
