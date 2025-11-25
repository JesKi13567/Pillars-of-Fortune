## 准备中
# 地图清理
execute as @e[type=marker, tag=jkpof_clean, limit=1] at @s run function jkpof:state/0/map_clean

# 交互实体
execute as @e[type=interaction, tag=jkpof_interaction] at @s run function jkpof:state/0/interaction/tick1

# 玩家
execute if score #countdown jkpof.int matches 2.. as @a[gamemode=adventure] at @s run function jkpof:state/0/player/ready
