## 游戏重置
scoreboard players set #state jkpof.int 0
scoreboard players reset * jkpof.state
scoreboard players reset * jkpof.id
scoreboard players reset * jkpof.team
scoreboard players reset * jkpof.vote
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
tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.game.reset", color: "green"}]
function jkpof:state/0/interaction/ctrl/time/set

# 清理地图
kill @e[type=marker, tag=jkpof_clean]
summon marker 0 129 0 {Tags: ["jkpof", "jkpof_clean"]}
scoreboard players set @e[type=marker, tag=jkpof_clean, limit=1] jkpof.int 100
bossbar set jkpof:progress visible false
execute as @a run function jkpof:state/0/player/clear
