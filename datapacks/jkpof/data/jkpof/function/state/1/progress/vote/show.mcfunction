tag @s add jkpof_voted

# 无效投票
execute unless score #event_enable__1 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=99}] jkpof.vote 0
execute if score #event_enable__1 jkpof.int matches 1 unless score #event_border.o jkpof.int < #event_border.t jkpof.int run scoreboard players set @s[scores={jkpof.vote=99}] jkpof.vote 0

execute unless score #event_enable_17 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=17}] jkpof.vote 0
execute if score #event_enable_17 jkpof.int matches 1 unless score #event_nuke.c jkpof.int matches 1.. run scoreboard players set @s[scores={jkpof.vote=17}] jkpof.vote 0

execute unless score #event_enable_1 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=1}] jkpof.vote 0
execute unless score #event_enable_2 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=2}] jkpof.vote 0
execute unless score #event_enable_3 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=3}] jkpof.vote 0
execute unless score #event_enable_4 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=4}] jkpof.vote 0
execute unless score #event_enable_5 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=5}] jkpof.vote 0
execute unless score #event_enable_6 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=6}] jkpof.vote 0
execute unless score #event_enable_7 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=7}] jkpof.vote 0
execute unless score #event_enable_8 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=8}] jkpof.vote 0
execute unless score #event_enable_9 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=9}] jkpof.vote 0
execute unless score #event_enable_10 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=10}] jkpof.vote 0
execute unless score #event_enable_11 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=11}] jkpof.vote 0
execute unless score #event_enable_12 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=12}] jkpof.vote 0
execute unless score #event_enable_13 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=13}] jkpof.vote 0
execute unless score #event_enable_14 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=14}] jkpof.vote 0
execute unless score #event_enable_15 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=15}] jkpof.vote 0
execute unless score #event_enable_16 jkpof.int matches 1 run scoreboard players set @s[scores={jkpof.vote=16}] jkpof.vote 0

execute unless score @s jkpof.vote matches 1..17 unless score @s jkpof.vote matches 99 run scoreboard players set @s jkpof.vote 0

execute as @s[scores={jkpof.vote=0}] run return run tellraw @s [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.invalid", color: "red"}]

# 投票通过
tellraw @s[scores={jkpof.vote=99}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=-1, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=1}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=1, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=2}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=2, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=3}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=3, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=4}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=4, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=5}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=5, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=6}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=6, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=7}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=7, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=8}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=8, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=9}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=9, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=10}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=10, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=11}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=11, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=12}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=12, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=13}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=13, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=14}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=14, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=15}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=15, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=16}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=16, limit=1]", color: "gold"}]
tellraw @s[scores={jkpof.vote=17}] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.check.this", color: "green"}, {selector: "@e[type=text_display, tag=jkpof_event_pool, tag=17, limit=1]", color: "gold"}]
