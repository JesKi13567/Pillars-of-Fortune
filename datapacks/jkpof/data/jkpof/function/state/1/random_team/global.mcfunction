# 游戏开始前才分配
scoreboard players reset #team_temp jkpof.int
execute as @a[scores={jkpof.state=1}, sort=random] store result score @s jkpof.int run scoreboard players add #team_temp jkpof.int 1
scoreboard players operation @a[scores={jkpof.state=1}] jkpof.int %= #ctrl_pillar_count_num jkpof.int
execute as @a[scores={jkpof.state=1}] run function jkpof:state/1/random_team/player
