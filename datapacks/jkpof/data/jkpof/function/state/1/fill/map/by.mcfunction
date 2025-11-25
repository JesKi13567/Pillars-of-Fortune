# 柱子分数
execute if score #ctrl_map_real jkpof.int matches 1..4 as @e[type=marker, tag=jkpof_player_spawn] run scoreboard players operation @s jkpof.int = @s jkpof.id
execute if score #ctrl_map_real jkpof.int matches 1..4 as @e[type=marker, tag=jkpof_player_spawn] run scoreboard players operation @s jkpof.int %= #2 jkpof.int

# 开始填充
$execute if score #ctrl_map_real jkpof.int matches 1..4 run function jkpof:state/1/fill/map/half {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y: '0'}
$execute if score #ctrl_map_real jkpof.int matches 1..4 if score #ctrl_ground_floor jkpof.int matches 2.. run function jkpof:state/1/fill/map/half {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y: '-1'}
$execute if score #ctrl_map_real jkpof.int matches 1..4 if score #ctrl_ground_floor jkpof.int matches 3.. run function jkpof:state/1/fill/map/half {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y: '-2'}
$execute if score #ctrl_map_real jkpof.int matches 1..4 if score #ctrl_ground_floor jkpof.int matches 4.. run function jkpof:state/1/fill/map/half {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y: '-3'}
$execute if score #ctrl_map_real jkpof.int matches 1..4 if score #ctrl_ground_floor jkpof.int matches 5.. run function jkpof:state/1/fill/map/half {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y: '-4'}
$execute if score #ctrl_map_real jkpof.int matches 5 run function jkpof:state/1/fill/map/const_3 {r: '$(r)', block0: '$(block0)', block1: '$(block1)', block2: '$(block2)', block3: '$(block3)'}

# 展示
title @a times 4t 2s 4t
execute if score #ctrl_map_real jkpof.int matches 1 run title @a title {storage: "jk:pof", nbt: "txt.map.title.1", color: "green"}
execute if score #ctrl_map_real jkpof.int matches 2 run title @a title {storage: "jk:pof", nbt: "txt.map.title.2", color: "green"}
execute if score #ctrl_map_real jkpof.int matches 3 run title @a title {storage: "jk:pof", nbt: "txt.map.title.3", color: "green"}
execute if score #ctrl_map_real jkpof.int matches 4 run title @a title {storage: "jk:pof", nbt: "txt.map.title.4", color: "green"}
execute if score #ctrl_map_real jkpof.int matches 5 run title @a title {storage: "jk:pof", nbt: "txt.map.title.5", color: "green"}

execute if score #ctrl_map_real jkpof.int matches 1 run title @a subtitle {storage: "jk:pof", nbt: "txt.map.subtitle.1", color: "yellow"}
execute if score #ctrl_map_real jkpof.int matches 2 run title @a subtitle {storage: "jk:pof", nbt: "txt.map.subtitle.2", color: "yellow"}
execute if score #ctrl_map_real jkpof.int matches 3 run title @a subtitle {storage: "jk:pof", nbt: "txt.map.subtitle.3", color: "yellow"}
execute if score #ctrl_map_real jkpof.int matches 4 run title @a subtitle {storage: "jk:pof", nbt: "txt.map.subtitle.4", color: "yellow"}
execute if score #ctrl_map_real jkpof.int matches 5 run title @a subtitle {storage: "jk:pof", nbt: "txt.map.subtitle.5", color: "yellow"}
