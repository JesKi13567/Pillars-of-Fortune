# 玩家生成生物
function jkpof:state/1/special_item/spawn_egg/player

# 冷却
scoreboard players remove @s[scores={jkpof.cd=1..}] jkpof.cd 1

# 虚空护符
execute as @s[scores={jkpof.void_charm.last=1..}] run function jkpof:state/1/special_item/void_charm/last

# 死亡笔记
execute if items entity @s weapon.* writable_book[custom_data={jkpof: ["death_note"]}] run function jkpof:state/1/special_item/death_note/chance
execute if items entity @s weapon.mainhand written_book[custom_data={jkpof: ["death_note"]}] run function jkpof:state/1/special_item/death_note/check/global

# 超级星
execute at @s[scores={jkpof.super_star=1..}] run function jkpof:state/1/special_item/super_star/last
