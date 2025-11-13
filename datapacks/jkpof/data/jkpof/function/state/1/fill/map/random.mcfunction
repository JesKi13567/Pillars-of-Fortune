# 地面
execute unless score #ctrl_ground_type jkpof.int matches 2 run function jkpof:state/1/fill/ground with storage jk:pof data.ground_radius
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 1 run function jkpof:state/1/fill/random {tar: '#ground', x1: '-24', y1: '0', z1: '-24', x2: '24', y2: '0', z2: '24'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 2 run function jkpof:state/1/fill/random {tar: '#ground', x1: '-24', y1: '-1', z1: '-24', x2: '24', y2: '0', z2: '24'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 3 run function jkpof:state/1/fill/random {tar: '#ground', x1: '-24', y1: '-2', z1: '-24', x2: '24', y2: '0', z2: '24'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 4 run function jkpof:state/1/fill/random {tar: '#ground', x1: '-24', y1: '-3', z1: '-24', x2: '24', y2: '0', z2: '24'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 5 run function jkpof:state/1/fill/random {tar: '#ground', x1: '-24', y1: '-4', z1: '-24', x2: '24', y2: '0', z2: '24'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 1.. run function jkpof:state/1/fill/random {tar: '#ground', x1: '-24', y1: '0', z1: '-24', x2: '24', y2: '0', z2: '24'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 2.. run function jkpof:state/1/fill/random {tar: '#ground', x1: '-24', y1: '-1', z1: '-24', x2: '24', y2: '-1', z2: '24'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 3.. run function jkpof:state/1/fill/random {tar: '#ground', x1: '-24', y1: '-2', z1: '-24', x2: '24', y2: '-2', z2: '24'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 4.. run function jkpof:state/1/fill/random {tar: '#ground', x1: '-24', y1: '-3', z1: '-24', x2: '24', y2: '-3', z2: '24'}
execute if score #ctrl_ground_type jkpof.int matches 0 if score #ctrl_ground_floor_random jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 5.. run function jkpof:state/1/fill/random {tar: '#ground', x1: '-24', y1: '-4', z1: '-24', x2: '24', y2: '-4', z2: '24'}

# 柱子
execute if score #ctrl_pillar_type jkpof.int matches 0 as @e[type=marker, tag=jkpof_player_spawn] at @s run function jkpof:state/1/fill/random {tar: '#pillar', x1: '~', y1: '~-2', z1: '~', x2: '~', y2: '1', z2: '~'}
execute if score #ctrl_pillar_type jkpof.int matches 1 store result score #pillar jkpof.int run random value 1..1164
execute if score #ctrl_pillar_type jkpof.int matches 1 at @e[type=marker, tag=jkpof_player_spawn] run function jkpof:state/1/fill/const {tar: '#pillar', x1: '~', y1: '~-2', z1: '~', x2: '~', y2: '1', z2: '~'}
execute if score #ctrl_pillar_type jkpof.int matches 3 as @e[type=marker, tag=jkpof_player_spawn] at @s run fill ~ ~-2 ~ ~ 1 ~ air
