# 变成旁观
execute as @a[gamemode=!spectator] run function jkpof:state/1/spectator/tick1

# 事件
execute if score #event_ctrl_real jkpof.int matches 1 run function jkpof:state/1/progress/event/tick1

# 可堆叠物品
execute as @e[type=item, tag=!jkpof] run function jkpof:state/1/special_item/stack

# 箭
execute as @e[type=arrow, tag=!jkpof, nbt={inGround: true}] at @s run function jkpof:state/1/special_item/spawn_egg/arrow/block

# 检查超级星玩家
execute if entity @p[scores={jkpof.state=2}, gamemode=survival] run function jkpof:state/1/special_item/super_star/song

# 玩家
execute as @a[scores={jkpof.state=2}, gamemode=survival] run function jkpof:state/1/ticks/player/tick1

# 幻魔者生成的恼鬼
execute as @e[type=vex, tag=!jkpof_spawn] unless score @s jkpof.id matches 1.. run function jkpof:state/1/special_item/spawn_egg/vex
