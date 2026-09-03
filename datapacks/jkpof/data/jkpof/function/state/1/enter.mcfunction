## 游戏初始化
scoreboard players reset * jkpof.death
scoreboard players reset * jkpof.leavegame
scoreboard players reset * jkpof.kills
scoreboard players reset * jkpof.lives
scoreboard players reset * jkpof.tp

scoreboard players reset * jkpof.cd
scoreboard players reset * jkpof.ray
scoreboard players reset * jkpof.void_charm.last
scoreboard players reset * jkpof.void_charm.hold
scoreboard players reset * jkpof.use.apple
scoreboard players reset * jkpof.use.golden_apple
scoreboard players reset * jkpof.use.enchanted_golden_apple
scoreboard players reset * jkpof.death_note.chance
scoreboard players reset * jkpof.death_note.cd
scoreboard players reset * jkpof.death_note.source
scoreboard players reset * jkpof.super_star
scoreboard players reset * jkpof.gravity
scoreboard players reset * jkpof.creative
scoreboard players reset * jkpof.betrayal

scoreboard players reset * jkpof.item.order
scoreboard players reset * jkpof.item.count

scoreboard players reset * jkpof.X
scoreboard players reset * jkpof.Y
scoreboard players reset * jkpof.Z

scoreboard players reset * jkpof.damage.source.last
scoreboard players reset * jkpof.damage.source.now
scoreboard players reset * jkpof.damage.source.real
scoreboard players reset * jkpof.damage.type.last
scoreboard players reset * jkpof.damage.type.now
scoreboard players reset * jkpof.damage.type.real
scoreboard players reset * jkpof.damage.forgive
scoreboard players reset * jkpof.damage.temp

scoreboard players reset * jkpof.spawn_egg.ender_dragon
scoreboard players reset * jkpof.spawn_egg.wither
scoreboard players reset * jkpof.spawn_egg.warden
scoreboard players reset * jkpof.spawn_egg.elder_guardian
scoreboard players reset * jkpof.spawn_egg.ghast
scoreboard players reset * jkpof.spawn_egg.blaze
scoreboard players reset * jkpof.spawn_egg.breeze
scoreboard players reset * jkpof.spawn_egg.vex
scoreboard players reset * jkpof.spawn_egg.evoker

scoreboard players reset * jkpof.spawn_egg.wolf
scoreboard players reset * jkpof.spawn_egg.cat
scoreboard players reset * jkpof.spawn_egg.parrot

scoreboard players reset * jkpof.spawn_egg.villager
scoreboard players reset * jkpof.spawn_egg.rabbit
scoreboard players reset * jkpof.spawn_egg.vindicator
scoreboard players reset * jkpof.spawn_egg.pillager
scoreboard players reset * jkpof.spawn_egg.sheep
scoreboard players reset * jkpof.spawn_egg.fox

scoreboard players reset * jkpof.spawn_egg.chicken
scoreboard players reset * jkpof.spawn_egg.cow
scoreboard players reset * jkpof.spawn_egg.pig
scoreboard players reset * jkpof.spawn_egg.frog

scoreboard players reset * jkpof.spawn_egg.bat
scoreboard players reset * jkpof.spawn_egg.tadpole

scoreboard players reset * jkpof.spawn_egg.bee
scoreboard players reset * jkpof.spawn_egg.bogged
scoreboard players reset * jkpof.spawn_egg.cave_spider
scoreboard players reset * jkpof.spawn_egg.creaking
scoreboard players reset * jkpof.spawn_egg.creeper
scoreboard players reset * jkpof.spawn_egg.dolphin
scoreboard players reset * jkpof.spawn_egg.drowned
scoreboard players reset * jkpof.spawn_egg.enderman
scoreboard players reset * jkpof.spawn_egg.endermite
scoreboard players reset * jkpof.spawn_egg.goat
scoreboard players reset * jkpof.spawn_egg.guardian
scoreboard players reset * jkpof.spawn_egg.hoglin
scoreboard players reset * jkpof.spawn_egg.husk
scoreboard players reset * jkpof.spawn_egg.iron_golem
scoreboard players reset * jkpof.spawn_egg.llama
scoreboard players reset * jkpof.spawn_egg.magma_cube
scoreboard players reset * jkpof.spawn_egg.nautilus
scoreboard players reset * jkpof.spawn_egg.panda
scoreboard players reset * jkpof.spawn_egg.parched
scoreboard players reset * jkpof.spawn_egg.phantom
scoreboard players reset * jkpof.spawn_egg.piglin
scoreboard players reset * jkpof.spawn_egg.piglin_brute
scoreboard players reset * jkpof.spawn_egg.polar_bear
scoreboard players reset * jkpof.spawn_egg.pufferfish
scoreboard players reset * jkpof.spawn_egg.ravager
scoreboard players reset * jkpof.spawn_egg.shulker
scoreboard players reset * jkpof.spawn_egg.silverfish
scoreboard players reset * jkpof.spawn_egg.skeleton
scoreboard players reset * jkpof.spawn_egg.slime
scoreboard players reset * jkpof.spawn_egg.spider
scoreboard players reset * jkpof.spawn_egg.stray
scoreboard players reset * jkpof.spawn_egg.trader_llama
scoreboard players reset * jkpof.spawn_egg.witch
scoreboard players reset * jkpof.spawn_egg.wither_skeleton
scoreboard players reset * jkpof.spawn_egg.zoglin
scoreboard players reset * jkpof.spawn_egg.zombie
scoreboard players reset * jkpof.spawn_egg.zombie_nautilus
scoreboard players reset * jkpof.spawn_egg.zombie_villager
scoreboard players reset * jkpof.spawn_egg.zombified_piglin
scoreboard players reset * jkpof.spawn_egg.pufferfish_bucket

scoreboard players reset #test_mode jkpof.int
scoreboard players reset #start_flag jkpof.int
scoreboard players reset #event_time jkpof.int
scoreboard players reset #event_type jkpof.int
scoreboard players reset #event_prop_supply.count.prop jkpof.int
scoreboard players reset #event_prop_supply.count.enchanted_book jkpof.int
scoreboard players reset #event_prop_supply.count.potion jkpof.int
scoreboard players reset #event_betrayal_hour.status jkpof.int

scoreboard players set #1st_blood jkpof.int 1
scoreboard players set #event_vote.last jkpof.int -1
scoreboard players set #event_broom.time jkpof.int 123
scoreboard players set #state jkpof.int 1
scoreboard players set #time_last jkpof.int 0
scoreboard players set #time_res jkpof.int 3
scoreboard players set #before_start jkpof.int 3
scoreboard players set #event_mode jkpof.int 0
scoreboard players set #event_progress jkpof.int 63
scoreboard players set #event_border.o jkpof.int 0
scoreboard players operation #event_nuke.c jkpof.int = #event_nuke.t jkpof.int
scoreboard players set #event_kid_mode jkpof.int 0
scoreboard players set #event_touch_change.status jkpof.int 0
scoreboard players set #event_loop jkpof.int 0
scoreboard players operation #prop.clock.freeze jkpof.int = #ctrl_time_freeze jkpof.int
scoreboard players set #prop.clock.rate jkpof.int 1

difficulty hard
gamerule pvp true
gamerule fall_damage true
gamerule fire_damage true
execute if score #ctrl_natural_regen jkpof.int matches 0 run gamerule natural_health_regeneration false
execute if score #ctrl_advancement jkpof.int matches 1 run gamerule show_advancement_messages true
execute if score #ctrl_locator_bar jkpof.int matches 1 run gamerule locator_bar true
worldborder set 49
kill @e[type=marker, tag=!jkpof_player_spawn, tag=!jkpof_marker_text]
kill @e[type=item_display, tag=jkpof_null_bomb_show]
scoreboard players set #event_ctrl_real jkpof.int 0
execute if score #event_ctrl jkpof.int matches 1.. run scoreboard players set #event_ctrl_real jkpof.int 1
execute if score #event_ctrl_real jkpof.int matches 1 run bossbar set jkpof:progress visible true
execute if score #ctrl_bossbar jkpof.int matches 0 run bossbar set jkpof:progress visible false
execute if score #ctrl_player_list jkpof.int matches 1 run scoreboard objectives setdisplay list jkpof.hp
bossbar set jkpof:progress max 60
tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.game.start.ed", color: "green"}]
execute as @a run function jkpof:state/0/player/clear

# 事件池
kill @e[type=text_display, tag=jkpof_event_pool]

execute if score #event_enable__1 jkpof.int matches 1 run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "-1"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.border.name"}, "]"], view_range: 0}
execute if score #event_enable_0 jkpof.int matches 1 run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "0"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.nothing.name"}, "]"], view_range: 0}

execute if score #event_enable_1 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "1"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.arrow.name"}, "]"], view_range: 0}
execute if score #event_enable_2 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "2"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.lava.name"}, "]"], view_range: 0}
execute if score #event_enable_3 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "3"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.name"}, "]"], view_range: 0}
execute if score #event_enable_4 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "4"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.moon_walk.name"}, "]"], view_range: 0}
execute if score #event_enable_5 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "5"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.name"}, "]"], view_range: 0}
execute if score #event_enable_6 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "6"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.chain_swap.name"}, "]"], view_range: 0}
execute if score #event_enable_7 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "7"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.name"}, "]"], view_range: 0}
execute if score #event_enable_8 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "8"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.vertical_lock.name"}, "]"], view_range: 0}
execute if score #event_enable_9 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "9"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.invisible_coating.name"}, "]"], view_range: 0}
execute if score #event_enable_10 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "10"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.name"}, "]"], view_range: 0}
execute if score #event_enable_11 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "11"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.bountiful_harvest.name"}, "]"], view_range: 0}
execute if score #event_enable_12 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "12"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.iron_torrent.name"}, "]"], view_range: 0}
execute if score #event_enable_13 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "13"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.loot_magnet.name"}, "]"], view_range: 0}
execute if score #event_enable_14 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "14"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.kid_mode.name"}, "]"], view_range: 0}
execute if score #event_enable_15 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "15"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.touch_change.name"}, "]"], view_range: 0}
execute if score #event_enable_16 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "16"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.purge.name"}, "]"], view_range: 0}
execute if score #event_enable_17 jkpof.int matches 1.. run summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_event_pool", "17"], text: ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.nuke.name"}, "]"], view_range: 0}

execute if score #event_plus_1 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=1] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.arrow.name"}, "]"]
execute if score #event_plus_2 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=2] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.lava.name"}, "]"]
execute if score #event_plus_3 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=3] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.lightning.name"}, "]"]
execute if score #event_plus_4 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=4] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.moon_walk.name"}, "]"]
execute if score #event_plus_5 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=5] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.bomb_chicken.name"}, "]"]
execute if score #event_plus_6 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=6] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.chain_swap.name"}, "]"]
execute if score #event_plus_7 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=7] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.prop_supply.name"}, "]"]
execute if score #event_plus_8 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=8] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.vertical_lock.name"}, "]"]
execute if score #event_plus_9 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=9] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.invisible_coating.name"}, "]"]
execute if score #event_plus_10 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=10] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.betrayal_hour.name"}, "]"]
execute if score #event_plus_11 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=11] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.bountiful_harvest.name"}, "]"]
execute if score #event_plus_12 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=12] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.iron_torrent.name"}, "]"]
execute if score #event_plus_13 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=13] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.loot_magnet.name"}, "]"]
execute if score #event_plus_14 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=14] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.kid_mode.name"}, "]"]
execute if score #event_plus_15 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=15] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.touch_change.name"}, "]"]
execute if score #event_plus_16 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=16] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.purge.name"}, "]"]
execute if score #event_plus_17 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=17] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.nuke.name"}, "]"]

execute if score #event_mix_1 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=1] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.arrow.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_2 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=2] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.lava.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_3 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=3] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_4 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=4] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.moon_walk.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_5 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=5] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_6 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=6] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.chain_swap.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_7 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=7] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_8 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=8] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.vertical_lock.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_9 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=9] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.invisible_coating.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_10 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=10] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_11 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=11] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.bountiful_harvest.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_12 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=12] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.iron_torrent.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_13 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=13] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.loot_magnet.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_14 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=14] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.kid_mode.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_15 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=15] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.touch_change.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_16 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=16] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.purge.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]
execute if score #event_mix_17 jkpof.int matches 1 run data modify entity @e[limit=1, tag=jkpof_event_pool, tag=17] text set value ["[", {storage: "jk:pof", interpret: true, nbt: "txt.event.nuke.name"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.question"}, "]"]

execute as @e[type=text_display, tag=jkpof_event_pool] run data modify entity @s CustomName set from entity @s text

data remove storage jk:pof data.event.list
execute if score #event_enable__1 jkpof.int matches 1 run data modify storage jk:pof data.event.list append value -1
execute if score #event_enable_0 jkpof.int matches 1 run data modify storage jk:pof data.event.list append value 0
execute if score #event_enable_1 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 1
execute if score #event_enable_2 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 2
execute if score #event_enable_3 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 3
execute if score #event_enable_4 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 4
execute if score #event_enable_5 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 5
execute if score #event_enable_6 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 6
execute if score #event_enable_7 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 7
execute if score #event_enable_8 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 8
execute if score #event_enable_9 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 9
execute if score #event_enable_10 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 10
execute if score #event_enable_11 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 11
execute if score #event_enable_12 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 12
execute if score #event_enable_13 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 13
execute if score #event_enable_14 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 14
execute if score #event_enable_15 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 15
execute if score #event_enable_16 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 16
execute if score #event_enable_17 jkpof.int matches 1.. run data modify storage jk:pof data.event.list append value 17
execute store result score #event_s jkpof.int run data get storage jk:pof data.event.list
execute store result storage jk:pof data.event.count int 1 run scoreboard players remove #event_s jkpof.int 1

# 柱子标号
scoreboard players reset #id_temp jkpof.int
execute as @e[type=marker, tag=jkpof_player_spawn, sort=random] store result score @s jkpof.id run scoreboard players add #id_temp jkpof.int 1

# 玩家进入
scoreboard players reset #id_temp jkpof.int
execute if score #ctrl_team jkpof.int matches 0 store result storage jk:pof data.pillar.n int 1 run scoreboard players get #ctrl_pillar_count_order_real jkpof.int
execute if score #ctrl_team jkpof.int matches 0 run function jkpof:state/1/before_start/pillar_count with storage jk:pof data.pillar
execute if score #ctrl_team jkpof.int matches 1..2 as @a[scores={jkpof.state=1, jkpof.team=1..}] run function jkpof:state/1/player_enter

## 地图
# 高度边界
summon item_display 0 120 0 {Tags: ["jkpof", "jkpof_height_barrier", "max"], brightness: {block: 15, sky: 15}, teleport_duration: 10, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [49f, 49f, .1f], translation: [0f, 0f, 0f]}, item: {id: "barrier"}, Rotation: [0f, -90f]}
summon item_display 0 -70 0 {Tags: ["jkpof", "jkpof_height_barrier", "min"], brightness: {block: 15, sky: 15}, teleport_duration: 10, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [49f, 49f, .1f], translation: [0f, 0f, 0f]}, item: {id: "barrier"}, Rotation: [0f, -90f]}

# 幸运之钓-水池
execute if score #ctrl_game_mode jkpof.int matches 1 run data modify storage jk:pof data.pool.h set from storage jk:pof data.pillar.h
execute if score #ctrl_game_mode jkpof.int matches 1 run data modify storage jk:pof data.pool.r set from storage jk:pof data.ground_radius.r
execute if score #ctrl_game_mode jkpof.int matches 1 run function jkpof:state/1/fill/pool with storage jk:pof data.pool

# 柱子初始
execute if score #ctrl_upside_down jkpof.int matches 0 as @e[type=marker, tag=jkpof_player_spawn] at @s run fill ~ ~-1 ~ ~ 1 ~ bedrock strict
execute if score #ctrl_upside_down jkpof.int matches 1 as @e[type=marker, tag=jkpof_player_spawn] at @s run fill ~ ~3 ~ ~ 49 ~ bedrock strict
execute if score #ctrl_upside_down jkpof.int matches 1 as @e[type=marker, tag=jkpof_player_spawn] at @s run setblock ~ ~-1 ~ bedrock strict

# 地图确认
function jkpof:state/0/interaction/ctrl/ground/map/set
execute if score #ctrl_map_real jkpof.int matches 0 run function jkpof:state/1/fill/map/not
execute if score #ctrl_map_real jkpof.int matches 1.. run function jkpof:state/1/fill/map/by with storage jk:pof data.map

# 特殊规则
scoreboard players set #special_rules.count jkpof.int 0
scoreboard players operation #special_rules.count jkpof.int += #ctrl_upside_down jkpof.int
scoreboard players operation #special_rules.count jkpof.int += #ctrl_double_health jkpof.int
scoreboard players operation #special_rules.count jkpof.int += #ctrl_init_tool jkpof.int
scoreboard players operation #special_rules.count jkpof.int += #ctrl_bonus_chest jkpof.int
scoreboard players operation #special_rules.count jkpof.int += #ctrl_spawn_protect jkpof.int
scoreboard players operation #special_rules.count jkpof.int += #ctrl_zero_friction jkpof.int
execute if score #special_rules.count jkpof.int matches 1.. run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.lore", color: "yellow"}]
execute if score #ctrl_upside_down jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.upside_down.name", color: "green"}]
execute if score #ctrl_double_health jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.double_health.name", color: "green"}]
execute if score #ctrl_init_tool jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.init_tool.name", color: "green"}]
execute if score #ctrl_bonus_chest jkpof.int matches 1 run tellraw @a [{translate: "selectWorld.bonusItems", color: "green"}]
execute if score #ctrl_spawn_protect jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.spawn_protect.name", color: "green"}]
execute if score #ctrl_zero_friction jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.zero_friction.name", color: "green"}]
