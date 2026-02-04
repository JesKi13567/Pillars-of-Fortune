# 开始填充
$execute if score #ctrl_map_real jkpof.int matches 1..5 as @e[type=marker, tag=jkpof_player_spawn] at @s run function jkpof:state/1/fill/map/type/half_pillar {block1: '$(block1)', block2: '$(block2)'}
$execute if score #ctrl_map_real jkpof.int matches 1..5 run function jkpof:state/1/fill/map/type/half_ground_floor {r: '$(r)', block1: '$(block1)', block2: '$(block2)'}
$execute if score #ctrl_map_real jkpof.int matches 6 run function jkpof:state/1/fill/map/type/6 {r: '$(r)'}
$execute if score #ctrl_map_real jkpof.int matches 7..9 run function jkpof:state/1/fill/map/type/ground_pillar {r: '$(r)', block1: '$(block1)', block2: '$(block2)'}
$execute if score #ctrl_map_real jkpof.int matches 10 run function jkpof:state/1/fill/map/type/10_ground {r: '$(r)', block1: '$(block1)', block2: '$(block2)'}

# 展示
title @a times 4t 2s 4t
$title @a title {storage: "jk:pof", nbt: "txt.map.title.$(id)", color: "green"}
$title @a subtitle {storage: "jk:pof", nbt: "txt.map.subtitle.$(id)", color: "yellow"}
$tellraw @a [{storage: "jk:pof", nbt: "txt.lobby.const.settings.map", color: "green"}, {storage: "jk:pof", nbt: "txt.char.colon"}, {storage: "jk:pof", nbt: "txt.map.title.$(id)", color: "gold"}]
