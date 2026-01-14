## 游戏初始化
scoreboard players reset * jkpof.leavegame
scoreboard players reset * jkpof.death
scoreboard players reset * jkpof.spawn_egg.ender_dragon
scoreboard players reset * jkpof.spawn_egg.wither
scoreboard players reset * jkpof.spawn_egg.warden
scoreboard players reset * jkpof.spawn_egg.elder_guardian
scoreboard players reset * jkpof.spawn_egg.ghast
scoreboard players reset * jkpof.spawn_egg.blaze
scoreboard players reset * jkpof.spawn_egg.breeze
scoreboard players reset * jkpof.spawn_egg.vex
scoreboard players reset * jkpof.spawn_egg.wolf
scoreboard players reset * jkpof.spawn_egg.cat
scoreboard players reset * jkpof.spawn_egg.parrot
scoreboard players reset * jkpof.cd
scoreboard players reset * jkpof.void_charm
scoreboard players reset * jkpof.use.apple
scoreboard players reset * jkpof.use.golden_apple
scoreboard players reset * jkpof.use.enchanted_golden_apple
scoreboard players reset * jkpof.death_note.chance
scoreboard players reset * jkpof.death_note.cd
scoreboard players reset * jkpof.X
scoreboard players reset * jkpof.Y
scoreboard players reset * jkpof.Z
scoreboard players reset #test_mode jkpof.int
scoreboard players reset #start_flag jkpof.int
scoreboard players reset #event_time jkpof.int
scoreboard players reset #event_type jkpof.int
scoreboard players set #event_vote_last jkpof.int -1
scoreboard players set #state jkpof.int 1
scoreboard players set #time_last jkpof.int 0
scoreboard players set #time_res jkpof.int 3
scoreboard players set #before_start jkpof.int 3
scoreboard players set #trash jkpof.int 93
scoreboard players set #height_max jkpof.int 120
scoreboard players set #event_mode jkpof.int 0
scoreboard players set #event_progress jkpof.int 63
scoreboard players set #event_border jkpof.int 2
scoreboard players set #event_loop jkpof.int 0
difficulty hard
gamerule pvp true
gamerule fall_damage true
gamerule fire_damage true
execute if score #ctrl_natural_regen jkpof.int matches 0 run gamerule natural_health_regeneration false
execute if score #ctrl_advancement jkpof.int matches 1 run gamerule show_advancement_messages true
execute if score #ctrl_locator_bar jkpof.int matches 1 run gamerule locator_bar true
worldborder set 49
kill @e[type=marker, tag=!jkpof_player_spawn]
summon item_display 0 120 0 {Tags: ["jkpof", "jkpof_barrier"], brightness: {block: 15, sky: 15}, teleport_duration: 10, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [49f, 49f, .1f], translation: [0f, 0f, 0f]}, item: {id: "barrier"}, Rotation: [0f, -90f]}
scoreboard players operation #event_ctrl_real jkpof.int = #event_ctrl jkpof.int
execute if score #event_ctrl_real jkpof.int matches 1 run bossbar set jkpof:progress visible true
bossbar set jkpof:progress max 60
tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.game.start.ed", color: "green"}]
function jkpof:state/0/player/clear

# 事件池
data remove storage jk:pof data.event.list
execute if score #event_enable__1 jkpof.int matches 1 run data modify storage jk:pof data.event.list append value -1
execute if score #event_enable_0 jkpof.int matches 1 run data modify storage jk:pof data.event.list append value 0
execute if score #event_enable_1 jkpof.int matches 1 run data modify storage jk:pof data.event.list append value 1
execute if score #event_enable_2 jkpof.int matches 1 run data modify storage jk:pof data.event.list append value 2
execute if score #event_enable_3 jkpof.int matches 1 run data modify storage jk:pof data.event.list append value 3
execute if score #event_enable_4 jkpof.int matches 1 run data modify storage jk:pof data.event.list append value 4
execute if score #event_enable_5 jkpof.int matches 1 run data modify storage jk:pof data.event.list append value 5
execute if score #event_enable_6 jkpof.int matches 1 run data modify storage jk:pof data.event.list append value 6
execute store result score #event_s jkpof.int run data get storage jk:pof data.event.list
execute store result storage jk:pof data.event.count int 1 run scoreboard players remove #event_s jkpof.int 1

# 柱子标号
scoreboard players reset #id_temp jkpof.int
execute as @e[type=marker, tag=jkpof_player_spawn, sort=random] store result score @s jkpof.id run scoreboard players add #id_temp jkpof.int 1

# 玩家进入
scoreboard players reset #id_temp jkpof.int
execute if score #ctrl_team jkpof.int matches 0 if score #ctrl_pillar_count_order_real jkpof.int matches 0 as @a[scores={jkpof.state=1}, limit=2, sort=random] run function jkpof:state/1/player_enter
execute if score #ctrl_team jkpof.int matches 0 if score #ctrl_pillar_count_order_real jkpof.int matches 1 as @a[scores={jkpof.state=1}, limit=4, sort=random] run function jkpof:state/1/player_enter
execute if score #ctrl_team jkpof.int matches 0 if score #ctrl_pillar_count_order_real jkpof.int matches 2 as @a[scores={jkpof.state=1}, limit=5, sort=random] run function jkpof:state/1/player_enter
execute if score #ctrl_team jkpof.int matches 0 if score #ctrl_pillar_count_order_real jkpof.int matches 3 as @a[scores={jkpof.state=1}, limit=8, sort=random] run function jkpof:state/1/player_enter
execute if score #ctrl_team jkpof.int matches 0 if score #ctrl_pillar_count_order_real jkpof.int matches 4 as @a[scores={jkpof.state=1}, limit=9, sort=random] run function jkpof:state/1/player_enter
execute if score #ctrl_team jkpof.int matches 0 if score #ctrl_pillar_count_order_real jkpof.int matches 5 as @a[scores={jkpof.state=1}, limit=12, sort=random] run function jkpof:state/1/player_enter
execute if score #ctrl_team jkpof.int matches 1..2 as @a[scores={jkpof.state=1, jkpof.team=1..}] run function jkpof:state/1/player_enter

## 地图
# 柱子初始
execute as @e[type=marker, tag=jkpof_player_spawn] at @s run fill ~ ~-1 ~ ~ 1 ~ bedrock strict
# 地图确认
function jkpof:state/0/interaction/ctrl/ground/map/set
execute if score #ctrl_map_real jkpof.int matches 0 run function jkpof:state/1/fill/map/random
execute if score #ctrl_map_real jkpof.int matches 1.. run function jkpof:state/1/fill/map/by with storage jk:pof data.map
