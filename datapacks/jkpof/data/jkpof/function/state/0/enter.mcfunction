## 游戏重置
scoreboard players set #state jkpof.int 0
scoreboard players reset * jkpof.state
scoreboard players reset * jkpof.id
scoreboard players reset * jkpof.team
scoreboard players reset * jkpof.vote
scoreboard objectives setdisplay list
difficulty peaceful
gamerule pvp false
gamerule fall_damage false
gamerule fire_damage false
gamerule natural_health_regeneration true
gamerule show_advancement_messages false
gamerule locator_bar false
worldborder set 1000
kill @e[type=item_display, tag=jkpof_height_barrier]
spawnpoint @a 0 64 -100
tp @a 0 64 -100 0 0
gamemode adventure @a
execute if score #ctrl_lang jkpof.int matches 0.. run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.game.reset", color: "green"}]
function jkpof:state/0/interaction/ctrl/time/set

# 恢复由“混合”导致的事件+分数为1
execute if score #event_mix_1 jkpof.int matches 1 run scoreboard players set #event_plus_1 jkpof.int 0
execute if score #event_mix_2 jkpof.int matches 1 run scoreboard players set #event_plus_2 jkpof.int 0
execute if score #event_mix_3 jkpof.int matches 1 run scoreboard players set #event_plus_3 jkpof.int 0
execute if score #event_mix_4 jkpof.int matches 1 run scoreboard players set #event_plus_4 jkpof.int 0
execute if score #event_mix_5 jkpof.int matches 1 run scoreboard players set #event_plus_5 jkpof.int 0
execute if score #event_mix_6 jkpof.int matches 1 run scoreboard players set #event_plus_6 jkpof.int 0
execute if score #event_mix_7 jkpof.int matches 1 run scoreboard players set #event_plus_7 jkpof.int 0
execute if score #event_mix_8 jkpof.int matches 1 run scoreboard players set #event_plus_8 jkpof.int 0
execute if score #event_mix_9 jkpof.int matches 1 run scoreboard players set #event_plus_9 jkpof.int 0
execute if score #event_mix_10 jkpof.int matches 1 run scoreboard players set #event_plus_10 jkpof.int 0
execute if score #event_mix_11 jkpof.int matches 1 run scoreboard players set #event_plus_11 jkpof.int 0
execute if score #event_mix_12 jkpof.int matches 1 run scoreboard players set #event_plus_12 jkpof.int 0
execute if score #event_mix_13 jkpof.int matches 1 run scoreboard players set #event_plus_13 jkpof.int 0
execute if score #event_mix_14 jkpof.int matches 1 run scoreboard players set #event_plus_14 jkpof.int 0
execute if score #event_mix_15 jkpof.int matches 1 run scoreboard players set #event_plus_15 jkpof.int 0
execute if score #event_mix_16 jkpof.int matches 1 run scoreboard players set #event_plus_16 jkpof.int 0
execute if score #event_mix_17 jkpof.int matches 1 run scoreboard players set #event_plus_17 jkpof.int 0

# 清理地图
kill @e[type=marker, tag=jkpof_clean]
summon marker 0 129 0 {Tags: ["jkpof", "jkpof_clean"]}
scoreboard players set @e[type=marker, tag=jkpof_clean, limit=1] jkpof.int 100
bossbar set jkpof:progress visible false
execute as @a run function jkpof:state/0/player/clear
