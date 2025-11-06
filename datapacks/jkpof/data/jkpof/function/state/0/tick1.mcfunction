## 准备中
execute as @e[type=marker, tag=jkpof_clean, limit=1] at @s run function jkpof:state/0/map_clean

# 玩家
gamemode adventure @a[gamemode=!creative]
execute as @a[gamemode=adventure] at @s run function jkpof:state/0/player_tick1

# 交互实体
execute as @e[type=interaction, tag=jkpof_interaction] at @s run function jkpof:state/0/interaction/tick1
