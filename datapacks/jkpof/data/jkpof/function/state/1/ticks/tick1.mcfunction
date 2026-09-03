# 玩家
execute as @a[scores={jkpof.state=2}] run function jkpof:state/1/ticks/player/tick1

# 观众
execute as @a unless score @s jkpof.state matches 2.. run function jkpof:state/1/spectator

# 事件
execute if score #event_ctrl_real jkpof.int matches 1 run function jkpof:state/1/progress/event/tick1

# 可堆叠物品
execute as @e[type=item, tag=!jkpof] run function jkpof:state/1/special_item/stack

# 箭
execute as @e[type=arrow, tag=!jkpof, nbt={inGround: true}] at @s run function jkpof:state/1/special_item/spawn_egg/arrow/block

# 幻魔者生成的恼鬼
execute as @e[type=vex, tag=!jkpof_spawn] unless score @s jkpof.id matches 1.. run function jkpof:state/1/special_item/spawn_egg/vex

# 冻结的生物
execute as @e[type=#jkpof:mobs, scores={jkpof.freeze=1..}] run function jkpof:state/1/special_item/clock/freeze

# 无敌星音乐
execute if entity @a[limit=1, scores={jkpof.state=2, jkpof.super_star=1..}] run function jkpof:state/1/special_item/super_star/song/0

# 快速建造塔
execute as @e[type=marker, tag=jkpof_tower] at @s run function jkpof:state/1/special_item/tower/global

# 湮灭爆弹
execute as @e[type=snowball, tag=!jkpof] at @s run function jkpof:state/1/special_item/null_bomb/summon
execute as @e[type=armor_stand, tag=jkpof_null_bomb] at @s unless entity @e[type=snowball, distance=..2] run function jkpof:state/1/special_item/null_bomb/land

# 水³
execute as @e[type=marker, tag=jkpof_water] at @s run function jkpof:state/1/special_item/water

# 触则生变清理
execute as @e[type=marker, tag=jkpof_touch_block] at @s if block ~ ~ ~ #air run kill @s
execute if score #event_touch_change.block_type jkpof.int matches 0 as @e[type=marker, tag=jkpof_touch_block] at @s if block ~ ~ ~ #jkpof:touch_not_change run kill @s

# 零摩擦弹性碰撞试验场
execute if score #ctrl_zero_friction jkpof.int matches 1 as @e[type=#jkpof:mobs, tag=!jkpof_zero_friction] run function jkpof:state/1/special_item/zero_friction
