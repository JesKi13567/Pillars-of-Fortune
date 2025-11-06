## 游戏中
# 变成旁观
execute as @a[gamemode=!spectator] run function jkpof:state/1/spectator/tick1

# 检查人数
execute store result score #players jkpof.int if entity @a[scores={jkpof.state=2}, gamemode=survival]
execute if score #players jkpof.int matches ..1 unless score #test_mode jkpof.int matches 1 run function jkpof:state/1/end/check

# 事件
execute if score #ctrl_event jkpof.int matches 1 run function jkpof:state/1/progress/event/tick1

# 玩家生成威胁性生物
execute as @a[scores={jkpof.state=2}] run function jkpof:state/1/spawn_egg/tick1

# 可堆叠物品
execute as @e[type=item] if items entity @s container.0 #jkpof:stack unless data entity @s Item.components.minecraft:max_stack_size run data modify entity @s Item.components.minecraft:max_stack_size set value 64
