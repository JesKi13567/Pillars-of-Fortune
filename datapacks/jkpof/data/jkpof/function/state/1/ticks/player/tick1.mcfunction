# 玩家生成生物
function jkpof:state/1/special_item/spawn_egg/player

# 冷却
scoreboard players remove @s[scores={jkpof.cd=1..}] jkpof.cd 1

# 虚空护符
execute as @s[scores={jkpof.void_charm.last=1..}] run function jkpof:state/1/special_item/void_charm/last

# 死亡笔记
execute if items entity @s weapon.* writable_book[custom_data={jkpof: ["death_note"]}] run function jkpof:state/1/special_item/death_note/chance
execute if items entity @s weapon.mainhand written_book[custom_data={jkpof: ["death_note"]}] run function jkpof:state/1/special_item/death_note/check/global

# 无敌星
execute at @s[scores={jkpof.super_star=1..}] run function jkpof:state/1/special_item/super_star/last

# 当个创世神
execute unless score @s[gamemode=creative] jkpof.creative matches 1.. run gamemode survival @s
execute as @s[scores={jkpof.creative=1..}] run function jkpof:state/1/special_item/creative/global
