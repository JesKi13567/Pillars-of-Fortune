# 玩家
execute as @a[scores={jkpof.state=2}] run function jkpof:state/1/ticks/player/tick1

# 观众
execute as @a unless score @s jkpof.state matches 2.. run function jkpof:state/1/spectator

# 事件
execute if score #event_ctrl_real jkpof.int matches 1 run function jkpof:state/1/progress/event/tick1

# 无敌星音乐
execute if entity @a[limit=1, scores={jkpof.state=2}] run function jkpof:state/1/special_item/super_star/song

# 可堆叠物品
execute as @e[type=item, tag=!jkpof] run function jkpof:state/1/special_item/stack

# 箭
execute as @e[type=arrow, tag=!jkpof, nbt={inGround: true}] at @s run function jkpof:state/1/special_item/spawn_egg/arrow/block

# 幻魔者生成的恼鬼
execute as @e[type=vex, tag=!jkpof_spawn] unless score @s jkpof.id matches 1.. run function jkpof:state/1/special_item/spawn_egg/vex

# 快速建造塔
execute as @e[type=marker, tag=jkpof_tower] at @s run function jkpof:state/1/special_item/tower/global

# 湮灭爆弹
execute as @e[type=snowball, tag=!jkpof] at @s run function jkpof:state/1/special_item/null_bomb/summon
execute as @e[type=armor_stand, tag=jkpof_null_bomb] at @s unless entity @e[type=snowball, distance=..2] run function jkpof:state/1/special_item/null_bomb/land
