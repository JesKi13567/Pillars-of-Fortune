## 游戏初始化
scoreboard players reset * jkpof.death
scoreboard players reset #test_mode jkpof.int
scoreboard players reset #start_flag jkpof.int
scoreboard players reset #event_time jkpof.int
scoreboard players reset #event_type jkpof.int
scoreboard players set #time_res jkpof.int 3
scoreboard players set #before_start jkpof.int 3
scoreboard players set #state jkpof.int 1
scoreboard players set #time_last jkpof.int 0

scoreboard players set #progress_mode jkpof.int 0
scoreboard players set #progress_value jkpof.int 63
scoreboard players set #progress_border jkpof.int 2
scoreboard players set #progress_count jkpof.int 0

difficulty hard
gamerule pvp true
worldborder set 49
kill @e[type=marker, tag=jkpof_clean]
kill @e[type=marker, tag=jkpof_lava_marker]
bossbar set jkpof:clean visible false
bossbar set jkpof:progress visible true
bossbar set jkpof:progress max 60
tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "游戏已开始！", color: "green"}]
function jkpof:state/0/player_clear

## 随机方块
# 地面
function jkpof:state/1/clone_ground with storage jk:pof data.ground_radius
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 1 run function jkpof:state/1/fill_random {tar: '#ground', x1: '-32', y1: '0', z1: '-32', x2: '32', y2: '0', z2: '32'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 2 run function jkpof:state/1/fill_random {tar: '#ground', x1: '-32', y1: '-1', z1: '-32', x2: '32', y2: '0', z2: '32'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 3 run function jkpof:state/1/fill_random {tar: '#ground', x1: '-32', y1: '-2', z1: '-32', x2: '32', y2: '0', z2: '32'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 4 run function jkpof:state/1/fill_random {tar: '#ground', x1: '-32', y1: '-3', z1: '-32', x2: '32', y2: '0', z2: '32'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 5 run function jkpof:state/1/fill_random {tar: '#ground', x1: '-32', y1: '-4', z1: '-32', x2: '32', y2: '0', z2: '32'}

execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 1.. run function jkpof:state/1/fill_random {tar: '#ground', x1: '-32', y1: '0', z1: '-32', x2: '32', y2: '0', z2: '32'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 2.. run function jkpof:state/1/fill_random {tar: '#ground', x1: '-32', y1: '-1', z1: '-32', x2: '32', y2: '-1', z2: '32'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 3.. run function jkpof:state/1/fill_random {tar: '#ground', x1: '-32', y1: '-2', z1: '-32', x2: '32', y2: '-2', z2: '32'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 4.. run function jkpof:state/1/fill_random {tar: '#ground', x1: '-32', y1: '-3', z1: '-32', x2: '32', y2: '-3', z2: '32'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 5 run function jkpof:state/1/fill_random {tar: '#ground', x1: '-32', y1: '-4', z1: '-32', x2: '32', y2: '-4', z2: '32'}

execute if score #ctrl_ground_type jkpof.int matches 2 run fill -32 0 -32 32 -4 32 air replace bedrock strict

# 柱子
execute as @e[type=marker, tag=jkpof_player_spawn] at @s run fill ~ ~-1 ~ ~ 1 ~ bedrock
execute if score #ctrl_pillar_type jkpof.int matches 0 as @e[type=marker, tag=jkpof_player_spawn] at @s run function jkpof:state/1/fill_random {tar: '#pillar', x1: '~', y1: '~-2', z1: '~', x2: '~', y2: '1', z2: '~'}
execute if score #ctrl_pillar_type jkpof.int matches 1 store result score #pillar jkpof.int run random value 1..1164
execute if score #ctrl_pillar_type jkpof.int matches 1 at @e[type=marker, tag=jkpof_player_spawn] run function jkpof:state/1/fill_const {tar: '#pillar', x1: '~', y1: '~-2', z1: '~', x2: '~', y2: '1', z2: '~'}
execute if score #ctrl_pillar_type jkpof.int matches 3 as @e[type=marker, tag=jkpof_player_spawn] at @s run fill ~ ~-2 ~ ~ 1 ~ air

## 分数
scoreboard players reset #pillar jkpof.int
execute as @e[type=marker, tag=jkpof_player_spawn, sort=random] store result score @s jkpof.int run scoreboard players add #pillar jkpof.int 1

scoreboard players reset #player_temp jkpof.int
execute if score #ctrl_pillar_count_order jkpof.int matches 0 as @a[scores={jkpof.state=1}, limit=9, sort=random] run function jkpof:state/1/player_enter
execute if score #ctrl_pillar_count_order jkpof.int matches 1 as @a[scores={jkpof.state=1}, limit=8, sort=random] run function jkpof:state/1/player_enter
execute if score #ctrl_pillar_count_order jkpof.int matches 2 as @a[scores={jkpof.state=1}, limit=5, sort=random] run function jkpof:state/1/player_enter
execute if score #ctrl_pillar_count_order jkpof.int matches 3 as @a[scores={jkpof.state=1}, limit=4, sort=random] run function jkpof:state/1/player_enter
