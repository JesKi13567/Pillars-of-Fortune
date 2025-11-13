# 柱子分数
execute as @e[type=marker, tag=jkpof_player_spawn] run scoreboard players operation @s jkpof.int = @s jkpof.id
execute as @e[type=marker, tag=jkpof_player_spawn] run scoreboard players operation @s jkpof.int %= #2 jkpof.int

# 开始填充
$function jkpof:state/1/fill/map/half {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y0: '0', y1: '-1', y2: '-2'}
$execute if score #ctrl_ground_floor jkpof.int matches 2.. run function jkpof:state/1/fill/map/half {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y0: '-1', y1: '-2', y2: '-3'}
$execute if score #ctrl_ground_floor jkpof.int matches 3.. run function jkpof:state/1/fill/map/half {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y0: '-2', y1: '-3', y2: '-4'}
$execute if score #ctrl_ground_floor jkpof.int matches 4.. run function jkpof:state/1/fill/map/half {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y0: '-3', y1: '-4', y2: '-5'}
$execute if score #ctrl_ground_floor jkpof.int matches 5.. run function jkpof:state/1/fill/map/half {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y0: '-4', y1: '-5', y2: '-6'}

# 展示
title @a times 4t 2s 4t
execute if score #ctrl_map jkpof.int matches 1 run title @a title {text: "盘丝洞", color: "green"}
execute if score #ctrl_map jkpof.int matches 2 run title @a title {text: "黏糊糊", color: "green"}
execute if score #ctrl_map jkpof.int matches 3 run title @a title {text: "冷飕飕", color: "green"}
execute if score #ctrl_map jkpof.int matches 4 run title @a title {text: "财富", color: "green"}

execute if score #ctrl_map jkpof.int matches 1 run title @a subtitle {text: "全盘入侵", color: "yellow"}
execute if score #ctrl_map jkpof.int matches 2 run title @a subtitle {translate: "advancements.adventure.honey_block_slide.title", color: "yellow"}
execute if score #ctrl_map jkpof.int matches 3 run title @a subtitle {text: "美丽冻人", color: "yellow"}
execute if score #ctrl_map jkpof.int matches 4 run title @a subtitle {text: "壕", color: "yellow"}
