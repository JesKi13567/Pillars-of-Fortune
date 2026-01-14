# 玩家生成威胁性生物
execute as @s[scores={jkpof.spawn_egg.ender_dragon=1..}] run function jkpof:state/1/special_item/spawn_egg {entity: ender_dragon}
execute as @s[scores={jkpof.spawn_egg.wither=1..}] run function jkpof:state/1/special_item/spawn_egg {entity: wither}
execute as @s[scores={jkpof.spawn_egg.warden=1..}] run function jkpof:state/1/special_item/spawn_egg {entity: warden}
execute as @s[scores={jkpof.spawn_egg.elder_guardian=1..}] run function jkpof:state/1/special_item/spawn_egg {entity: elder_guardian}
execute as @s[scores={jkpof.spawn_egg.ghast=1..}] run function jkpof:state/1/special_item/spawn_egg {entity: ghast}
execute as @s[scores={jkpof.spawn_egg.blaze=1..}] run function jkpof:state/1/special_item/spawn_egg {entity: blaze}
execute as @s[scores={jkpof.spawn_egg.breeze=1..}] run function jkpof:state/1/special_item/spawn_egg {entity: breeze}
execute as @s[scores={jkpof.spawn_egg.vex=1..}] run function jkpof:state/1/special_item/spawn_egg {entity: vex}

execute at @s[scores={jkpof.spawn_egg.wolf=1..}] run function jkpof:state/1/special_item/tame/wolf
execute at @s[scores={jkpof.spawn_egg.cat=1..}] run function jkpof:state/1/special_item/tame/cat
execute at @s[scores={jkpof.spawn_egg.parrot=1..}] run function jkpof:state/1/special_item/tame/parrot

# 冷却
scoreboard players remove @s[scores={jkpof.cd=1..}] jkpof.cd 1

# 虚空护符
execute as @s[scores={jkpof.void_charm=1..}] run function jkpof:state/1/special_item/void_charm/last

# 死亡笔记
execute if items entity @s weapon.* writable_book[custom_data={jkpof: ["death_note"]}] run function jkpof:state/1/special_item/death_note/chance
execute if items entity @s weapon.mainhand written_book[custom_data={jkpof: ["death_note"]}] run function jkpof:state/1/special_item/death_note/check/global
